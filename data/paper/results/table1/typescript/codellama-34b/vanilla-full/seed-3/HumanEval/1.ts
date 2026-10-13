function separate_paren_groups(paren_string: string): string[] {
  const groups: string[] = [];
  let current_group = "";
  let level = 0;

  for (const char of paren_string) {
    if (char === "(") {
      if (level === 0) {
        current_group = char;
      } else {
        current_group += char;
      }
      level++;
    } else if (char === ")") {
      level--;
      if (level === 0) {
        groups.push(current_group + char);
        current_group = "";
      } else {
        current_group += char;
      }
    }
  }

  return groups;
}

console.log(separate_paren_groups("( ) (( )) (( )( ))")); // Output: ["()", "(())", "(()())"]


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
