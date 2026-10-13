function separate_paren_groups(paren_string: string): string[] {
  const groups: string[] = [];
  let group: string = "";

  for (let i = 0; i < paren_string.length; i++) {
    const char = paren_string[i];

    if (char === "(") {
      group += char;
    } else if (char === ")") {
      if (group.length > 0 && group[group.length - 1] === "(") {
        group = group.slice(0, -1);
      } else {
        group += char;
      }
    }

    if (group.length > 0 && group[group.length - 1] !== "(") {
      groups.push(group);
      group = "";
    }
  }

  return groups;
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
