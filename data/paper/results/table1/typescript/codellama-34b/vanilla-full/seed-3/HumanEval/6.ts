function parse_nested_parens(paren_string: string): number[] {
  const paren_groups = paren_string.split(" ");
  const levels = [];
  for (const paren_group of paren_groups) {
    let level = 1;
    let max_level = 1;
    for (const paren of paren_group) {
      if (paren === "(") {
        level += 1;
        max_level = Math.max(max_level, level);
      } else if (paren === ")") {
        level -= 1;
      }
    }
    levels.push(max_level);
  }
  return levels;
}

// Example usage:
console.log(parse_nested_parens("(()()) ((())) () ((())()())"));


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
