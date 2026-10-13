const fs = require("fs");
const path = require("path");
const readline = require("readline");
const ts = require(process.env.GENCOR_TYPESCRIPT_PATH || "typescript");

const HOLE = "__GG_TS_HOLE__";
const AMBIENT_PRELUDE = `
declare namespace __GGNodeCrypto {
  interface Hash {
    update(data: string): Hash;
    digest(encoding: string): string;
  }

  interface Crypto {
    createHash(algorithm: string): Hash;
  }
}

declare function require(name: "crypto"): __GGNodeCrypto.Crypto;
declare function require(name: string): any;

// The default lib set (DOM) and @types/node are dropped from the compiler
// options for speed (they add ~100k lines of .d.ts that TS must parse/bind and
// enumerate on every inspect). The only global from those libs the generated
// code actually references is \`console\`, so it is re-declared here -- a dozen
// symbols instead of the 39k-line lib.dom.d.ts. See lsp compiler \`options\`.
declare var console: {
  log(...data: any[]): void;
  error(...data: any[]): void;
  warn(...data: any[]): void;
  info(...data: any[]): void;
  debug(...data: any[]): void;
  trace(...data: any[]): void;
  assert(condition?: boolean, ...data: any[]): void;
  dir(item?: any, options?: any): void;
  table(tabularData?: any, properties?: any): void;
  group(...data: any[]): void;
  groupEnd(): void;
  count(label?: string): void;
  time(label?: string): void;
  timeEnd(label?: string): void;
};
`;

function readStdin() {
  return fs.readFileSync(0, "utf8");
}

function offsetAt(code, line, character) {
  const lines = code.split(/\n/);
  let offset = 0;
  for (let i = 0; i < line; i += 1) {
    offset += lines[i].length + 1;
  }
  return offset + character;
}

function lineAndCharacterAt(code, offset) {
  const boundedOffset = Math.max(0, Math.min(offset, code.length));
  let line = 0;
  let lineStart = 0;
  for (let i = 0; i < boundedOffset; i += 1) {
    if (code[i] === "\n") {
      line += 1;
      lineStart = i + 1;
    }
  }
  return { line, character: boundedOffset - lineStart };
}

function typeToString(checker, type, location) {
  if (!type) {
    return null;
  }
  return checker.typeToString(
    type,
    location,
    ts.TypeFormatFlags.NoTruncation | ts.TypeFormatFlags.UseSingleQuotesForStringLiteralType
  );
}

function syntaxKindOperatorText(kind) {
  return ts.tokenToString(kind) || null;
}

function containsRange(node, start, end) {
  return node.getFullStart() <= start && end <= node.getEnd();
}

function findEnclosingFunction(node) {
  let current = node.parent;
  while (current) {
    if (
      ts.isFunctionDeclaration(current) ||
      ts.isFunctionExpression(current) ||
      ts.isArrowFunction(current) ||
      ts.isMethodDeclaration(current)
    ) {
      return current;
    }
    current = current.parent;
  }
  return null;
}

function declaredReturnType(checker, node) {
  const fn = findEnclosingFunction(node);
  if (!fn) {
    return null;
  }
  if (fn.type) {
    return checker.getTypeFromTypeNode(fn.type);
  }
  const signature = checker.getSignatureFromDeclaration(fn);
  return signature ? checker.getReturnTypeOfSignature(signature) : null;
}

function expectedTypeForExpression(checker, node) {
  const direct = checker.getContextualType(node);
  if (direct) {
    return {
      type: direct,
      source: "contextual",
      reason: "direct contextual type",
    };
  }

  const parent = node.parent;
  if (!parent) {
    return null;
  }

  if (ts.isReturnStatement(parent) && parent.expression === node) {
    const type = declaredReturnType(checker, node);
    return type
      ? {
          type,
          source: "return",
          reason: "enclosing function return type",
        }
      : null;
  }

  if (ts.isVariableDeclaration(parent) && parent.initializer === node && parent.type) {
    return {
      type: checker.getTypeFromTypeNode(parent.type),
      source: "variable_declaration",
      reason: "declared variable type",
    };
  }

  if (
    ts.isParenthesizedExpression(parent) ||
    (ts.isAsExpression(parent) && parent.expression === node) ||
    (ts.isTypeAssertionExpression(parent) && parent.expression === node)
  ) {
    return expectedTypeForExpression(checker, parent);
  }

  return null;
}

function binaryContextForParent(checker, parent, holeStart, holeEnd) {
  let side = null;
  let other = null;
  if (containsRange(parent.left, holeStart, holeEnd)) {
    side = "left";
    other = parent.right;
  } else if (containsRange(parent.right, holeStart, holeEnd)) {
    side = "right";
    other = parent.left;
  }

  if (!side || !other) {
    return null;
  }

  const parentContext = expectedTypeForExpression(checker, parent);
  return {
    kind: "binary",
    operator: syntaxKindOperatorText(parent.operatorToken.kind),
    side,
    otherType: typeToString(checker, checker.getTypeAtLocation(other), other),
    expectedType: typeToString(
      checker,
      parentContext && parentContext.type,
      parent
    ),
    expectedTypeSource: parentContext ? parentContext.source : null,
    expectedTypeReason: parentContext ? parentContext.reason : null,
  };
}

function frontierContextStack(checker, holeNode) {
  const holeStart = holeNode.getFullStart();
  const holeEnd = holeNode.getEnd();
  const contexts = [];
  let current = holeNode;

  while (current) {
    const parent = current.parent;
    if (!parent) {
      break;
    }

    if (ts.isBinaryExpression(parent)) {
      const context = binaryContextForParent(checker, parent, holeStart, holeEnd);
      if (context) {
        contexts.push(context);
      }
    }

    current = parent;
  }

  return contexts;
}

function nearestBinaryContext(checker, holeNode) {
  const contexts = frontierContextStack(checker, holeNode);
  return contexts.length ? contexts[0] : null;
}

function expressionStepCount(node) {
  if (!node) {
    return 0;
  }

  if (ts.isParenthesizedExpression(node) || ts.isNonNullExpression(node)) {
    return expressionStepCount(node.expression);
  }

  if (ts.isElementAccessExpression(node)) {
    return expressionStepCount(node.expression) + 1;
  }

  if (ts.isPropertyAccessExpression(node)) {
    return expressionStepCount(node.expression) + 1;
  }

  if (ts.isCallExpression(node)) {
    const calleeSteps = expressionStepCount(node.expression);
    return ts.isPropertyAccessExpression(node.expression) ? calleeSteps : calleeSteps + 1;
  }

  if (ts.isBinaryExpression(node)) {
    return Math.max(expressionStepCount(node.left), expressionStepCount(node.right)) + 1;
  }

  if (ts.isConditionalExpression(node)) {
    return Math.max(
      expressionStepCount(node.condition),
      expressionStepCount(node.whenTrue),
      expressionStepCount(node.whenFalse)
    ) + 1;
  }

  if (
    ts.isAsExpression(node) ||
    ts.isTypeAssertionExpression(node)
  ) {
    return expressionStepCount(node.expression);
  }

  return 0;
}

function frontierPrefixStepCount(holeNode) {
  const parent = holeNode && holeNode.parent;
  if (
    parent &&
    ts.isPropertyAccessExpression(parent) &&
    parent.name === holeNode
  ) {
    return expressionStepCount(parent.expression);
  }

  return 0;
}

function expectedTypeForHoleContext(checker, holeNode) {
  // The expected type is EXACTLY what the TS API says at the hole position:
  // checker.getContextualType(holeNode), nothing else (user principle: the
  // single hole-ask, no derivation). getContextualType natively covers every
  // position an Exp item starts at -- initializers, call arguments, return
  // expressions, parenthesized flows. Positions where it answers nothing
  // (statement expressions, relational operands, ...) genuinely HAVE no
  // contextual type; the previous parent-walk fabricated one there and both
  // observed defects came from it: a statement hole inside a reduce callback
  // inherited the call ARGUMENT's signature type (sem_none mbpp/270), and the
  // RHS operand of `o < {a:2}` inherited the enclosing declaration's
  // `boolean` so the object-literal open was false-rejected. Operand goals
  // are the constrainer's operator-table inversion's job, not this ask's.
  const direct = checker.getContextualType(holeNode);
  if (direct) {
    return {
      type: direct,
      directType: direct,
      derived: null,
      source: "contextual",
      reason: "direct contextual type",
    };
  }

  return {
    type: null,
    directType: null,
    derived: null,
    source: null,
    reason: null,
  };
}

function findHole(node) {
  if (ts.isIdentifier(node) && node.text === HOLE) {
    return node;
  }
  return ts.forEachChild(node, findHole);
}

function parameterTypeAtPosition(checker, signature, index, location) {
  // Rest-aware "what type does this signature expect at argument position
  // `index`": a fixed parameter's type, the rest parameter's ELEMENT type when
  // the position falls into a trailing rest, or null when the position is
  // beyond the signature's arity (the overload cannot take this argument).
  const params = signature.getParameters();
  if (!params.length) {
    return null;
  }
  const last = params[params.length - 1];
  const lastDecl = last.valueDeclaration;
  const lastIsRest = !!(
    lastDecl &&
    ts.isParameter(lastDecl) &&
    lastDecl.dotDotDotToken
  );
  const fixedCount = params.length - (lastIsRest ? 1 : 0);
  if (index < fixedCount) {
    return checker.getTypeOfSymbolAtLocation(params[index], location);
  }
  if (!lastIsRest) {
    return null;
  }
  const restType = checker.getTypeOfSymbolAtLocation(last, location);
  return checker.getIndexTypeOfType(restType, ts.IndexKind.Number) || null;
}

function callHasCloseParen(node) {
  const children = node.getChildren();
  for (let i = children.length - 1; i >= 0; i -= 1) {
    if (children[i].kind === ts.SyntaxKind.CloseParenToken) {
      return true;
    }
  }
  return false;
}

function enclosingCallForAnchor(sourceFile, anchor) {
  // Innermost call/new whose ARGUMENT-LIST region contains the anchor. The
  // anchor is the argument's own START offset, so a call that merely STARTS at
  // the anchor (the argument is itself a call) does not qualify: its
  // arguments.pos lies past the anchor. An UNCLOSED call (ask code ends inside
  // its argument list) has arguments.end at the last parsed token, short of an
  // end-of-code anchor -- its region extends to the end of the file.
  let best = null;
  function visit(node) {
    const argCall =
      ts.isCallExpression(node) || (ts.isNewExpression(node) && node.arguments);
    if (argCall && node.arguments.pos <= anchor) {
      const argEnd = callHasCloseParen(node) ? node.arguments.end : sourceFile.end;
      if (anchor <= argEnd) {
        best = node; // children are visited after the parent -> innermost wins
      }
    }
    ts.forEachChild(node, visit);
  }
  visit(sourceFile);
  return best;
}

function signatureHelpAt(checker, sourceFile, anchor) {
  // Overload-candidate view at an argument position (design doc
  // type_constrain_overload_design_ko.md section 4): ALL candidate signatures of
  // the enclosing call via checker.getResolvedSignature(call, candidates) --
  // position-anchored like the single hole-ask, but returning the full SET the
  // single getContextualType commits away. null (no enclosing call / no
  // candidates) tells the caller to keep the single-expected path.
  const call = enclosingCallForAnchor(sourceFile, anchor);
  if (!call) {
    return null;
  }
  const committedArgTypes = [];
  let argumentIndex = 0;
  for (const arg of call.arguments) {
    if (arg.pos === arg.end) {
      continue; // parser-synthesized missing argument
    }
    if (arg.getEnd() < anchor) {
      argumentIndex += 1;
      committedArgTypes.push(
        typeToString(checker, checker.getTypeAtLocation(arg), arg)
      );
    }
  }
  const candidateSignatures = [];
  let resolved = null;
  try {
    resolved = checker.getResolvedSignature(call, candidateSignatures);
  } catch (error) {
    return null;
  }
  if (!candidateSignatures.length) {
    return null;
  }
  let resolvedIndex = null;
  const candidates = candidateSignatures.map((sig, i) => {
    if (resolved && sig === resolved) {
      resolvedIndex = i;
    }
    const prefixParams = [];
    for (let j = 0; j < argumentIndex; j += 1) {
      const t = parameterTypeAtPosition(checker, sig, j, call);
      prefixParams.push(t ? typeToString(checker, t, call) : null);
    }
    const expectedType = parameterTypeAtPosition(checker, sig, argumentIndex, call);
    return {
      prefixParams,
      expectedAtArg: expectedType ? typeToString(checker, expectedType, call) : null,
    };
  });
  return { argumentIndex, committedArgTypes, resolvedIndex, candidates };
}

function declarationKind(declaration) {
  if (ts.isParameter(declaration)) {
    return "parameter";
  }
  if (ts.isVariableDeclaration(declaration)) {
    const flags = ts.getCombinedNodeFlags(declaration);
    if ((flags & ts.NodeFlags.Const) !== 0) {
      return "const";
    }
    if ((flags & ts.NodeFlags.Let) !== 0) {
      return "let";
    }
    return "var";
  }
  if (ts.isFunctionDeclaration(declaration)) {
    return "function";
  }
  return ts.SyntaxKind[declaration.kind] || "unknown";
}

function declarationNameEnd(declaration) {
  if (declaration.name) {
    return declaration.name.getEnd();
  }
  return declaration.getStart();
}

function isCandidateDeclaration(declaration, fileName, holeOffset) {
  if (declaration.getSourceFile().fileName !== fileName) {
    return false;
  }
  if (!declaration.name || !ts.isIdentifier(declaration.name)) {
    return false;
  }
  if (declarationNameEnd(declaration) > holeOffset) {
    return false;
  }
  return (
    ts.isParameter(declaration) ||
    ts.isVariableDeclaration(declaration) ||
    ts.isFunctionDeclaration(declaration)
  );
}

function firstCandidateDeclaration(symbol, fileName, holeOffset) {
  const declarations = symbol.getDeclarations() || [];
  return declarations.find((declaration) =>
    isCandidateDeclaration(declaration, fileName, holeOffset)
  );
}

function createProgramForCode(fileName, code, options) {
  const host = ts.createCompilerHost(options);
  const originalGetSourceFile = host.getSourceFile.bind(host);
  const originalReadFile = host.readFile.bind(host);
  const originalFileExists = host.fileExists.bind(host);

  host.readFile = (requestedFileName) => {
    if (path.resolve(requestedFileName) === path.resolve(fileName)) {
      return code;
    }
    return originalReadFile(requestedFileName);
  };

  host.fileExists = (requestedFileName) => {
    if (path.resolve(requestedFileName) === path.resolve(fileName)) {
      return true;
    }
    return originalFileExists(requestedFileName);
  };

  host.getSourceFile = (requestedFileName, languageVersion, onError, shouldCreateNewSourceFile) => {
    if (path.resolve(requestedFileName) === path.resolve(fileName)) {
      return ts.createSourceFile(requestedFileName, code, languageVersion, true);
    }
    return originalGetSourceFile(
      requestedFileName,
      languageVersion,
      onError,
      shouldCreateNewSourceFile
    );
  };

  return ts.createProgram([fileName], options, host);
}

function createLanguageServiceForCode(fileName, code, options) {
  const resolvedFileName = path.resolve(fileName);
  const defaultLibFileName = ts.getDefaultLibFilePath(options);
  const host = {
    getScriptFileNames: () => [resolvedFileName],
    getScriptVersion: () => "0",
    getScriptSnapshot: (requestedFileName) => {
      const resolved = path.resolve(requestedFileName);
      if (resolved === resolvedFileName) {
        return ts.ScriptSnapshot.fromString(code);
      }
      if (!fs.existsSync(resolved)) {
        return undefined;
      }
      return ts.ScriptSnapshot.fromString(fs.readFileSync(resolved, "utf8"));
    },
    getCurrentDirectory: () => path.dirname(resolvedFileName),
    getCompilationSettings: () => options,
    getDefaultLibFileName: () => defaultLibFileName,
    fileExists: (requestedFileName) =>
      path.resolve(requestedFileName) === resolvedFileName || ts.sys.fileExists(requestedFileName),
    readFile: (requestedFileName) =>
      path.resolve(requestedFileName) === resolvedFileName ? code : ts.sys.readFile(requestedFileName),
    readDirectory: ts.sys.readDirectory,
    directoryExists: ts.sys.directoryExists,
    getDirectories: ts.sys.getDirectories,
  };
  return ts.createLanguageService(host);
}

const languageServiceSessions = new Map();

// The incremental language service is reused across ALL tasks (its key is the
// constant fileName+options), so its version count -- one bump per distinct
// setCode -- grows unbounded over a full eval run (hundreds of tasks x hundreds
// of probes on one session, never reset). With module: NodeNext, TS sets an
// impliedNodeFormat on every re-parsed source file, which makes its
// setExternalModuleIndicator WRAP the previous one; the wrapper chain grows one
// deeper per re-parse and past a few thousand every probe throws
// `RangeError: Maximum call stack size exceeded` (reproduced: clean at 3000
// churn, ~1000 fatalErrors at 8000, permanent once tripped -> every inspect
// falls back to a cold one-shot subprocess ~600ms -> the late-task
// check_after_gen spike). Dropping NodeNext removes the trigger but CHANGES
// type inference (verified A/B: impliedNodeFormat=undefined loses e.g.
// `Array.from(String(n)).map` element typing -> number becomes any, +2802
// diagnostics), so we keep NodeNext and instead recreate the session before the
// wrapper chain gets deep. A fresh service resets the chain to zero and gives
// identical types (same options); the only cost is re-parsing the ES lib
// (~185ms) once per limit, amortized over ~1000 inspects.
//
// The PRIMARY reset is per task (reset_session drops the whole session at each
// task boundary, off the generation clock); this limit is a within-task safety
// net for a pathologically long single task. The overflow onset is data-
// dependent -- ~8000 re-parses on real generated code (nested Array.from/map),
// but simpler shapes ran clean past 8500 -- so 5000 sits comfortably below the
// observed onset while staying well above a typical task's ~1500 bumps (so it
// never fires mid-normal-task; per-task reset already handles those).
const SESSION_VERSION_LIMIT = 5000;

function languageServiceSessionKey(fileName, options) {
  return `${path.resolve(fileName)}\0${JSON.stringify(options)}`;
}

function languageServiceSessionForCode(fileName, options) {
  const key = languageServiceSessionKey(fileName, options);
  const existing = languageServiceSessions.get(key);
  if (existing && existing.getVersion() < SESSION_VERSION_LIMIT) {
    return existing;
  }
  // fall through: build a fresh session, replacing any over-churned one.

  const resolvedFileName = path.resolve(fileName);
  const defaultLibFileName = ts.getDefaultLibFilePath(options);
  let currentCode = "";
  let version = 0;

  const host = {
    getScriptFileNames: () => [resolvedFileName],
    getScriptVersion: (requestedFileName) =>
      path.resolve(requestedFileName) === resolvedFileName ? String(version) : "0",
    getScriptSnapshot: (requestedFileName) => {
      const resolved = path.resolve(requestedFileName);
      if (resolved === resolvedFileName) {
        return ts.ScriptSnapshot.fromString(currentCode);
      }
      if (!fs.existsSync(resolved)) {
        return undefined;
      }
      return ts.ScriptSnapshot.fromString(fs.readFileSync(resolved, "utf8"));
    },
    getCurrentDirectory: () => path.dirname(resolvedFileName),
    getCompilationSettings: () => options,
    getDefaultLibFileName: () => defaultLibFileName,
    fileExists: (requestedFileName) =>
      path.resolve(requestedFileName) === resolvedFileName ||
      ts.sys.fileExists(requestedFileName),
    readFile: (requestedFileName) =>
      path.resolve(requestedFileName) === resolvedFileName
        ? currentCode
        : ts.sys.readFile(requestedFileName),
    readDirectory: ts.sys.readDirectory,
    directoryExists: ts.sys.directoryExists,
    getDirectories: ts.sys.getDirectories,
  };

  const service = ts.createLanguageService(host);
  const session = {
    service,
    fileName: resolvedFileName,
    getVersion: () => version,
    setCode: (code) => {
      const nextCode = String(code || "");
      if (nextCode !== currentCode) {
        currentCode = nextCode;
        version += 1;
      }
    },
  };
  languageServiceSessions.set(key, session);
  return session;
}

function completionEntriesForService(service, fileName, offset) {
  const info = service.getCompletionsAtPosition(fileName, offset, {
    includeCompletionsForModuleExports: false,
    includeCompletionsWithInsertText: false,
  });
  if (!info || !info.entries) {
    return [];
  }
  return info.entries.map((entry) => ({
    name: entry.name,
    kind: entry.kind,
    kindModifiers: entry.kindModifiers || "",
    sortText: entry.sortText || "",
    source: entry.source || null,
    hasAction: Boolean(entry.hasAction),
  }));
}

function completionEntriesForCode(fileName, code, offset, options) {
  const service = createLanguageServiceForCode(fileName, code, options);
  return completionEntriesForService(service, fileName, offset);
}

function enrichMemberCompletionTypes(checker, holeNode, entries) {
  const parent = holeNode && holeNode.parent;
  if (
    !parent ||
    !ts.isPropertyAccessExpression(parent) ||
    parent.name !== holeNode
  ) {
    return entries;
  }

  const receiverType = checker.getTypeAtLocation(parent.expression);
  if (!receiverType) {
    return entries;
  }

  return entries.map((entry) => {
    const symbol = checker.getPropertyOfType(receiverType, entry.name);
    if (!symbol) {
      return entry;
    }
    const typ = checker.getTypeOfSymbolAtLocation(symbol, holeNode);
    if (!typ) {
      return entry;
    }
    return {
      ...entry,
      type: typeToString(checker, typ, holeNode),
      source: entry.source || "memberType",
    };
  });
}

function memberAccessInfoForHole(checker, holeNode, options) {
  const parent = holeNode && holeNode.parent;
  if (
    !parent ||
    !ts.isPropertyAccessExpression(parent) ||
    parent.name !== holeNode
  ) {
    return null;
  }

  const receiverType = checker.getTypeAtLocation(parent.expression);
  if (!receiverType) {
    return null;
  }
  const stringIndexType = checker.getIndexTypeOfType(
    receiverType,
    ts.IndexKind.String
  );
  return {
    receiverType: typeToString(checker, receiverType, parent.expression),
    stringIndexType: typeToString(checker, stringIndexType, holeNode),
    dotAccessAllowed: options.noPropertyAccessFromIndexSignature !== true,
  };
}

function diagnosticToJson(sourceFile, diagnostic, offsetDelta = 0, logicalCode = null) {
  const start = diagnostic.start == null ? null : diagnostic.start;
  const mappedStart = start == null ? null : start - offsetDelta;
  const pos =
    mappedStart == null || mappedStart < 0
      ? null
      : logicalCode != null
        ? lineAndCharacterAt(logicalCode, mappedStart)
        : sourceFile.getLineAndCharacterOfPosition(start);
  return {
    code: diagnostic.code,
    category: ts.DiagnosticCategory[diagnostic.category],
    message: ts.flattenDiagnosticMessageText(diagnostic.messageText, "\n"),
    start: mappedStart,
    length: diagnostic.length == null ? null : diagnostic.length,
    line: pos ? pos.line : null,
    character: pos ? pos.character : null,
  };
}

function diagnosticsForProgram(program, sourceFile, offsetDelta = 0, logicalCode = null) {
  if (!sourceFile) {
    return { syntactic: [], semantic: [] };
  }
  return {
    syntactic: program
      .getSyntacticDiagnostics(sourceFile)
      .map((diagnostic) =>
        diagnosticToJson(sourceFile, diagnostic, offsetDelta, logicalCode)
      )
      .filter((diagnostic) => diagnostic.start == null || diagnostic.start >= 0),
    semantic: program
      .getSemanticDiagnostics(sourceFile)
      .map((diagnostic) =>
        diagnosticToJson(sourceFile, diagnostic, offsetDelta, logicalCode)
      )
      .filter((diagnostic) => diagnostic.start == null || diagnostic.start >= 0),
  };
}

function deepestNodeAtOffset(node, offset) {
  let best = node;
  function visit(current) {
    const start = current.getFullStart();
    const end = current.getEnd();
    if (start <= offset && offset <= end) {
      best = current;
      ts.forEachChild(current, visit);
    }
  }
  visit(node);
  return best;
}

function isExpressionLike(node) {
  return (
    ts.isIdentifier(node) ||
    ts.isPropertyAccessExpression(node) ||
    ts.isElementAccessExpression(node) ||
    ts.isCallExpression(node) ||
    ts.isNewExpression(node) ||
    ts.isArrowFunction(node) ||
    ts.isFunctionExpression(node) ||
    ts.isBinaryExpression(node) ||
    ts.isConditionalExpression(node) ||
    ts.isPrefixUnaryExpression(node) ||
    ts.isPostfixUnaryExpression(node) ||
    ts.isTypeOfExpression(node) ||
    ts.isVoidExpression(node) ||
    ts.isDeleteExpression(node) ||
    ts.isAwaitExpression(node) ||
    ts.isTemplateExpression(node) ||
    ts.isTaggedTemplateExpression(node) ||
    ts.isParenthesizedExpression(node) ||
    ts.isAsExpression(node) ||
    ts.isNonNullExpression(node) ||
    ts.isArrayLiteralExpression(node) ||
    ts.isObjectLiteralExpression(node) ||
    ts.isStringLiteral(node) ||
    ts.isNumericLiteral(node) ||
    ts.isBigIntLiteral(node) ||
    node.kind === ts.SyntaxKind.TrueKeyword ||
    node.kind === ts.SyntaxKind.FalseKeyword ||
    node.kind === ts.SyntaxKind.NullKeyword ||
    node.kind === ts.SyntaxKind.NoSubstitutionTemplateLiteral
  );
}

function nearestExpressionAtOffset(sourceFile, offset, minStart = null) {
  if (!sourceFile) {
    return null;
  }
  let node = deepestNodeAtOffset(sourceFile, offset);
  while (node && !isExpressionLike(node)) {
    node = node.parent;
  }
  if (!node) {
    return null;
  }

  let current = node;
  while (
    current.parent &&
    isExpressionLike(current.parent) &&
    current.parent.getEnd() === current.getEnd() &&
    (minStart === null || current.parent.getStart(sourceFile) >= minStart)
  ) {
    current = current.parent;
  }
  return current;
}

function inspect(payload) {
  const sourceCode = String(payload.code || "");
  const spanTypesOnly = payload.spanTypesOnly === true;
  const originalCode = sourceCode + (spanTypesOnly ? String(payload.spanClosure || "") : "");
  const ambientPrelude = payload.disableAmbientPrelude ? "" : AMBIENT_PRELUDE;
  const preludeLength = ambientPrelude.length;
  const code = ambientPrelude + originalCode;
  const line = Number(payload.line || 0);
  const character = Number(payload.character || 0);
  const fileName = path.resolve(payload.fileName || "snippet.ts");
  const includeCompletions = payload.includeCompletions !== false;
  const includeSymbols = payload.includeSymbols !== false;
  const includeDiagnostics = payload.includeDiagnostics !== false;
  const completionOnly = payload.completionOnly === true;
  const typedSuggestionsOnly = payload.typedSuggestionsOnly === true;
  const includeSignatureHelp = payload.includeSignatureHelp === true;
  const signatureHelpOnly = payload.signatureHelpOnly === true;
  const holeOffset = Number.isInteger(payload.offset)
    ? payload.offset + preludeLength
    : offsetAt(originalCode, line, character) + preludeLength;
  const signatureAnchor = Number.isInteger(payload.signatureHelpAnchor)
    ? payload.signatureHelpAnchor + preludeLength
    : holeOffset;
  const currentExpressionStart = Number.isInteger(payload.currentExpressionStart)
    ? payload.currentExpressionStart + preludeLength
    : null;
  const codeWithHole = code.slice(0, holeOffset) + HOLE + code.slice(holeOffset);

  const options = {
    target: ts.ScriptTarget.ES2025,
    module: ts.ModuleKind.NodeNext,
    moduleResolution: ts.ModuleResolutionKind.NodeNext,
    strict: true,
    esModuleInterop: true,
    skipLibCheck: true,
    // PERF: restrict the type universe to the ES core lib only. The default lib
    // set (target ES2025 -> es2023 + DOM + webworker, ~54k lines) and
    // types:["node"] (@types/node, ~47k lines across 104 files) are dropped:
    // skipLibCheck skips *checking* those .d.ts but TS still parses, binds, and
    // enumerates their symbols on every inspect -- ~34ms/call vs ~6ms with just
    // es core. The generated TS subset (measured over the eval outputs) never
    // references DOM/Node globals except `console`, which the AMBIENT_PRELUDE
    // re-declares. types:[] also stops @types/* node_modules resolution walks.
    lib: ["lib.es2023.d.ts"],
    types: [],
  };

  const session = languageServiceSessionForCode(fileName, options);

  // Existing-expression type snapshot: close the current candidate once, build
  // one Program, and answer every exact source span from the same checker.  The
  // caller falls back to its older per-fragment probe when parser recovery did
  // not produce an expression node with the requested exact span.
  if (spanTypesOnly) {
    session.setCode(code);
    const program = session.service.getProgram();
    const sourceFile = program.getSourceFile(fileName);
    const checker = program.getTypeChecker();
    const requested = new Map();
    for (const item of Array.isArray(payload.spans) ? payload.spans : []) {
      const start = Number(item && item.start);
      const end = Number(item && item.end);
      if (
        Number.isInteger(start) &&
        Number.isInteger(end) &&
        0 <= start &&
        start < end &&
        end <= sourceCode.length
      ) {
        requested.set(`${start}:${end}`, { start, end });
      }
    }

    const spanTypes = [];
    const found = new Set();
    function visit(node) {
      if (isExpressionLike(node)) {
        const start = node.getStart(sourceFile) - preludeLength;
        const end = node.getEnd() - preludeLength;
        const key = `${start}:${end}`;
        if (requested.has(key) && !found.has(key)) {
          found.add(key);
          let type = null;
          try {
            type = typeToString(checker, checker.getTypeAtLocation(node), node);
          } catch (_error) {
            type = null;
          }
          spanTypes.push({
            start,
            end,
            type,
            expression: node.getText(sourceFile),
          });
        }
      }
      ts.forEachChild(node, visit);
    }
    if (sourceFile && requested.size) {
      visit(sourceFile);
    }

    return {
      spanTypesOnly: true,
      spanTypes,
      diagnostics: includeDiagnostics
        ? diagnosticsForProgram(program, sourceFile, preludeLength, originalCode)
        : { syntactic: [], semantic: [] },
    };
  }

  // Typed suggestion fast path: both completion names and their symbol types
  // are read from one hole-anchored program.  The normal inspect path first
  // builds the original program for completions and then a second hole program
  // for symbols; suggestion callers need neither original-expression types nor
  // diagnostics, so that first build is redundant for them.
  if (typedSuggestionsOnly) {
    session.setCode(codeWithHole);
    const program = session.service.getProgram();
    const sourceFile = program.getSourceFile(fileName);
    const checker = program.getTypeChecker();
    const holeNode = sourceFile ? findHole(sourceFile) : null;
    if (!holeNode) {
      return {
        typedSuggestionsOnly: false,
        symbols: [],
        completions: [],
        diagnostics: { syntactic: [], semantic: [] },
        error: "Could not find inserted expression hole.",
      };
    }

    const rawCompletions = includeCompletions
      ? completionEntriesForService(session.service, fileName, holeOffset)
      : [];
    const completions = includeCompletions
      ? enrichMemberCompletionTypes(checker, holeNode, rawCompletions)
      : [];
    const symbols = includeSymbols
      ? checker
          .getSymbolsInScope(holeNode, ts.SymbolFlags.Value)
          .map((symbol) => {
            const declaration = firstCandidateDeclaration(symbol, fileName, holeOffset);
            if (!declaration) {
              return null;
            }
            const actualType = checker.getTypeOfSymbolAtLocation(symbol, holeNode);
            return {
              name: symbol.getName(),
              kind: declarationKind(declaration),
              type: typeToString(checker, actualType, holeNode),
            };
          })
          .filter(Boolean)
      : [];

    return {
      typedSuggestionsOnly: true,
      expectedType: null,
      currentType: null,
      currentExpression: null,
      symbols,
      completions,
      memberAccess: memberAccessInfoForHole(checker, holeNode, options),
      diagnostics: { syntactic: [], semantic: [] },
      frontierContext: null,
      frontierContexts: [],
      frontierPrefixSteps: 0,
    };
  }

  // PERF: expectedType-only fast path (mirror of skipHoleProbe). A caller that
  // reads ONLY expectedType (the hole program) does not read currentType /
  // completions / diagnostics / signatureHelp (all from the ORIGINAL program) --
  // verified for the ACTIVE-arg expected-type ask when signatureHelp is not
  // requested. Skip the original build (a full re-typecheck this caller ignores)
  // and build only the hole program.
  if (payload.skipOriginalProbe) {
    session.setCode(codeWithHole);
    const program = session.service.getProgram();
    const sourceFile = program.getSourceFile(fileName);
    const checker = program.getTypeChecker();
    const holeNode = sourceFile ? findHole(sourceFile) : null;
    if (!holeNode) {
      return {
        expectedType: null, directExpectedType: null, derivedExpectedType: null,
        currentType: null, currentExpression: null, symbols: [], completions: [],
        diagnostics: { syntactic: [], semantic: [] },
        error: "Could not find inserted expression hole.",
      };
    }
    const ctx = expectedTypeForHoleContext(checker, holeNode);
    return {
      expectedType: typeToString(checker, ctx.type, holeNode),
      directExpectedType: typeToString(checker, ctx.directType, holeNode),
      derivedExpectedType: typeToString(checker, ctx.derived && ctx.derived.type, holeNode),
      expectedTypeSource: ctx.source,
      expectedTypeReason: ctx.reason,
      currentType: null, currentExpression: null, symbols: [], completions: [],
      diagnostics: { syntactic: [], semantic: [] },
    };
  }

  session.setCode(code);
  const originalProgram = session.service.getProgram();
  const originalSourceFile = originalProgram.getSourceFile(fileName);
  const originalChecker = originalProgram.getTypeChecker();
  const currentNode = nearestExpressionAtOffset(
    originalSourceFile,
    Math.max(0, Math.min(holeOffset, code.length)),
    currentExpressionStart
  );

  // Overload-candidate block: computed on the ORIGINAL program (no hole
  // insertion -- getResolvedSignature is AST-anchored, and the ask code may
  // contain the argument's own text, which a hole marker would corrupt).
  const signatureHelp =
    includeSignatureHelp || signatureHelpOnly
      ? signatureHelpAt(originalChecker, originalSourceFile, signatureAnchor)
      : undefined;
  if (signatureHelpOnly) {
    // Candidate-set-only ask (REDUCED argument items): skip the hole program
    // entirely -- the marker would merge with the argument's leading token and
    // trip the missing-hole error path (worker-restart storm).
    return {
      expectedType: null,
      symbols: [],
      completions: [],
      diagnostics: { syntactic: [], semantic: [] },
      signatureHelp: signatureHelp || null,
    };
  }

  const originalCompletions = includeCompletions
    ? completionEntriesForService(session.service, fileName, holeOffset)
    : [];

  // Name/kind-only completion asks do not consume expected/current types,
  // symbols, diagnostics, or frontier metadata. Return from the original
  // program before constructing and type-checking the second, hole-inserted
  // program.
  if (completionOnly) {
    return {
      expectedType: null,
      currentType: null,
      currentExpression: null,
      symbols: [],
      completions: originalCompletions,
      memberAccess: null,
      diagnostics: { syntactic: [], semantic: [] },
      frontierContext: null,
      frontierContexts: [],
      frontierPrefixSteps: 0,
    };
  }

  // PERF: frontier-probe fast path. A frontier probe only reads currentType +
  // diagnostics, both computed above from the ORIGINAL (no-hole) program. The
  // hole program below is built solely for expectedType / completions / symbols
  // / frontierContext, which NO frontier-probe consumer reads (verified across
  // ts_expr_reachability.py + TypeScriptCompilerAPI.py). Building it is a second
  // full-file re-typecheck (~50ms on complex bodies) of pure dead work -- and its
  // hole marker merges with identifier frontiers, which is what tripped the
  // restart storm. Skip it entirely when the caller sets skipHoleProbe. Returns
  // the SAME currentType / currentExpression / diagnostics fields as the normal
  // path (originalChecker / originalProgram); hole-derived fields are empty.
  if (payload.skipHoleProbe) {
    return {
      currentType: currentNode
        ? typeToString(originalChecker, originalChecker.getTypeAtLocation(currentNode), currentNode)
        : null,
      currentExpression: currentNode ? currentNode.getText(originalSourceFile) : null,
      expectedType: null,
      symbols: [],
      completions: originalCompletions,
      diagnostics: includeDiagnostics
        ? diagnosticsForProgram(originalProgram, originalSourceFile, preludeLength, originalCode)
        : { syntactic: [], semantic: [] },
      frontierContext: null,
    };
  }

  session.setCode(codeWithHole);
  const program = session.service.getProgram();
  const sourceFile = program.getSourceFile(fileName);
  const checker = program.getTypeChecker();
  const holeNode = sourceFile ? findHole(sourceFile) : null;

  if (!holeNode) {
    return {
      expectedType: null,
      currentType: currentNode
        ? typeToString(originalChecker, originalChecker.getTypeAtLocation(currentNode), currentNode)
        : null,
      currentExpression: currentNode ? currentNode.getText(originalSourceFile) : null,
      symbols: [],
      completions: originalCompletions,
      diagnostics: includeDiagnostics
        ? diagnosticsForProgram(
            originalProgram,
            originalSourceFile,
            preludeLength,
            originalCode
          )
        : { syntactic: [], semantic: [] },
      frontierContext: null,
      ...(includeSignatureHelp ? { signatureHelp: signatureHelp || null } : {}),
      error: "Could not find inserted expression hole.",
    };
  }

  const expectedContext = expectedTypeForHoleContext(checker, holeNode);
  const directExpectedType = expectedContext.directType;
  const derivedExpected = expectedContext.derived;
  const expectedType = expectedContext.type;
  const frontierContexts = frontierContextStack(checker, holeNode);
  const frontierPrefixSteps = frontierPrefixStepCount(holeNode);
  const completions = includeCompletions
    ? enrichMemberCompletionTypes(
        checker,
        holeNode,
        originalCompletions
      )
    : [];
  const memberAccess = memberAccessInfoForHole(checker, holeNode, options);
  const symbols = includeSymbols
    ? checker
        .getSymbolsInScope(holeNode, ts.SymbolFlags.Value)
        .map((symbol) => {
          const declaration = firstCandidateDeclaration(symbol, fileName, holeOffset);
          if (!declaration) {
            return null;
          }

          const actualType = checker.getTypeOfSymbolAtLocation(symbol, holeNode);
          const apiAssignable =
            directExpectedType && actualType
              ? checker.isTypeAssignableTo(actualType, directExpectedType)
              : null;
          const assignable =
            expectedType && actualType
              ? checker.isTypeAssignableTo(actualType, expectedType)
              : null;

          return {
            name: symbol.getName(),
            kind: declarationKind(declaration),
            type: typeToString(checker, actualType, holeNode),
            apiAssignable,
            assignable,
          };
        })
        .filter(Boolean)
    : [];

  return {
    expectedType: typeToString(checker, expectedType, holeNode),
    directExpectedType: typeToString(checker, directExpectedType, holeNode),
    derivedExpectedType: typeToString(
      checker,
      derivedExpected && derivedExpected.type,
      holeNode
    ),
    currentType: currentNode
      ? typeToString(originalChecker, originalChecker.getTypeAtLocation(currentNode), currentNode)
      : null,
    currentExpression: currentNode ? currentNode.getText(originalSourceFile) : null,
    expectedTypeSource: expectedContext.source,
    expectedTypeReason: expectedContext.reason,
    symbols,
    completions,
    memberAccess,
    diagnostics: includeDiagnostics
      ? diagnosticsForProgram(
          originalProgram,
          originalSourceFile,
          preludeLength,
          originalCode
        )
      : { syntactic: [], semantic: [] },
    frontierContext: frontierContexts.length ? frontierContexts[0] : null,
    frontierContexts,
    frontierPrefixSteps,
    ...(includeSignatureHelp ? { signatureHelp: signatureHelp || null } : {}),
  };
}

function inspectFrontierProbe(payload) {
  const codeBefore = String(payload.codeBefore || "");
  const fragment = String(payload.fragment || "");
  const preferSyntacticClean = payload.preferSyntacticClean !== false;
  const closures = Array.isArray(payload.closures) ? payload.closures : [""];
  const fileName = path.resolve(payload.fileName || "snippet.ts");
  const probePrefix = codeBefore + fragment;
  const offset = probePrefix.length;
  let firstTyped = null;

  for (const closure of closures) {
    const data = inspect({
      code: probePrefix + closure,
      offset,
      currentExpressionStart: codeBefore.length,
      fileName,
      includeCompletions: false,
      includeSymbols: false,
      includeDiagnostics: true,
      // Frontier probes read only currentType + diagnostics (both from the
      // no-hole program) -- skip the redundant hole-program re-typecheck.
      skipHoleProbe: true,
    });

    if (data.currentType) {
      if (!preferSyntacticClean) {
        return { data, closure };
      }

      const syntactic =
        data.diagnostics && Array.isArray(data.diagnostics.syntactic)
          ? data.diagnostics.syntactic
          : [];
      if (syntactic.length === 0) {
        return { data, closure };
      }
      if (!firstTyped) {
        firstTyped = { data, closure };
      }
    }
  }

  return firstTyped || { data: {}, closure: "" };
}

function dispatch(payload) {
  if (payload.resetSession) {
    // Per-task boundary: drop the accumulated incremental session so the next
    // inspect builds a fresh language service. Prevents the setExternalModule
    // Indicator wrapper chain from carrying over across tasks (see
    // SESSION_VERSION_LIMIT). Called off the per-token generation clock.
    languageServiceSessions.clear();
    return { ok: true };
  }
  if (Array.isArray(payload.batch)) {
    return payload.batch.map((item) => dispatch(item || {}));
  }
  if (payload.kind === "frontierProbe") {
    return inspectFrontierProbe(payload);
  }
  return inspect(payload);
}

function fatalErrorToJson(error) {
  return {
    expectedType: null,
    symbols: [],
    error: error && error.stack ? error.stack : String(error),
    fatalError: true,
  };
}

function runOneShot() {
  try {
    const payload = JSON.parse(readStdin() || "{}");
    process.stdout.write(JSON.stringify(dispatch(payload)));
  } catch (error) {
    process.stdout.write(JSON.stringify(fatalErrorToJson(error)));
    process.exitCode = 1;
  }
}

function runServer() {
  const rl = readline.createInterface({
    input: process.stdin,
    crlfDelay: Infinity,
    terminal: false,
  });

  rl.on("line", (line) => {
    if (!line.trim()) {
      return;
    }
    try {
      const payload = JSON.parse(line);
      process.stdout.write(`${JSON.stringify(dispatch(payload))}\n`);
    } catch (error) {
      process.stdout.write(`${JSON.stringify(fatalErrorToJson(error))}\n`);
    }
  });
}

if (process.argv.includes("--server")) {
  runServer();
} else {
  runOneShot();
}
