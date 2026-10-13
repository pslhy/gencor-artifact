function separate_paren_groups(paren_string: string): string[] {
  const parens: string[] = [];
  let current_paren: string = "";
  let skip_next = false;

  for (const char of paren_string) {
    if (skip_next) {
      skip_next = false;
      continue;
    }

    if (char === "(") {
      current_paren += char;
      parens.push(current_paren);
      continue;
    }

    if (char === ")") {
      current_paren = parens.pop() as string;
      current_paren += char;
      skip_next = true;
      continue;
    }

    current_paren += char;
  }

  return parens;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
//     separate those group into separate strings and return the array of those.
//     Separate groups are balanced (each open brace is properly closed) and not nested within each other
//     Ignore any spaces in the input string.
//     >>> separate_paren_groups("( ) (( )) (( )( ))")
//     ["()", "(())", "(()())"]
