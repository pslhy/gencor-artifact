function parse_nested_parens(paren_string: string): number[] {
  const groups: string[] = paren_string.split(" ");
  const depths: number[] = [];
  
  for (const group of groups) {
    const parens: string[] = group.split("");
    let depth = 0;
    let max_depth = 0;
    
    for (const paren of parens) {
      if (paren === "(") {
        depth++;
        if (depth > max_depth) {
          max_depth = depth;
        }
      } else if (paren === ")") {
        depth--;
      }
    }
    
    depths.push(max_depth);
  }
  
  return depths;
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
