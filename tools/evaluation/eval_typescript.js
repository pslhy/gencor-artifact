// Offline functional checker added for this verification. The historical
// POPL TypeScript grading driver was not found; do not label this its replica.
const fs = require("fs");
const ts = require(process.env.GENCOR_TYPESCRIPT_PATH || "typescript");
const input = JSON.parse(fs.readFileSync(0, "utf8"));
const resultPath = process.argv[2];
let result;
try {
  const compiled = ts.transpileModule(input.code + "\n\n" + input.tests, {
    compilerOptions: {target: ts.ScriptTarget.ES2024, module: ts.ModuleKind.CommonJS},
    reportDiagnostics: true,
  });
  const syntaxErrors = (compiled.diagnostics || []).filter(d => d.category === ts.DiagnosticCategory.Error);
  if (syntaxErrors.length) {
    result = {status: "failed", detail: syntaxErrors.map(d => ts.flattenDiagnosticMessageText(d.messageText, "\n")).join("\n")};
  } else {
    // Run all supplied assertions in one fresh process. Type diagnostics are
    // a separate metric: the surviving TCG helper also emits/runs JS even
    // when tsc reports semantic errors (no noEmitOnError).
    const programModule = {exports: {}};
    new Function("require", "module", "exports", "__filename", "__dirname", compiled.outputText)(
      require, programModule, programModule.exports, process.cwd() + "/program.js", process.cwd());
    result = {status: "passed", detail: null};
  }
} catch (error) {
  result = {status: "failed", detail: String(error.stack || error)};
}
fs.writeFileSync(resultPath, JSON.stringify(result));
