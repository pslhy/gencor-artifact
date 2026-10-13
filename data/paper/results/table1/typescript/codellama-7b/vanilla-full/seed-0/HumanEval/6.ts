function parse_nested_parens(paren_string: string): number[] {
  const parens: number[] = [];
  let depth = 0;
  for (const char of paren_string) {
    if (char === "(") {
      depth++;
    } else if (char === ")") {
      depth--;
    }
    if (depth > parens[parens.length - 1]) {
      parens.push(depth);
    }
  }
  return parens;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
//     For each of the group, output the deepest level of nesting of parentheses.
//     E.g. (()()) has maximum two levels of nesting while ((())) has three.
//     >>> parse_nested_parens("(()()) ((())) () ((())()())")
//     [2, 3, 1, 3]
