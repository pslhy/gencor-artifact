function parse_nested_parens(paren_string: string): number[] {
  let max_nesting_level = 0;
  const nesting_levels = paren_string.split(" ");

  const nested_parens_count = nesting_levels.map((level) => {
    const num_parens = count_nested_parens(level);
    return num_parens;
  });

  return nested_parens_count;
}

function count_nested_parens(paren_string: string): number {
  let level = 0;
  for (let i = 0; i < paren_string.length; i++) {
    if (paren_string[i] === "(") {
      level++;
    } else if (paren_string[i] === ")") {
      level--;
    }
  }
  return Math.max(level, 0);
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
