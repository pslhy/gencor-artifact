function parse_nested_parens(paren_string: string): number[] {
  const paren_pairs: string[] = paren_string.split(' ');
  const max_depths: number[] = [];

  for (const pair of paren_pairs) {
    const depth = calculate_depth(pair);
    max_depths.push(depth);
  }

  return max_depths;
}

function calculate_depth(paren_string: string): number {
  let depth = 0;
  let max_depth = 0;

  for (let i = 0; i < paren_string.length; i++) {
    if (paren_string[i] === '(') {
      depth++;
    } else if (paren_string[i] === ')') {
      depth--;
      if (depth < 0) {
        throw new Error('Unbalanced parentheses');
      }
    }

    if (depth > max_depth) {
      max_depth = depth;
    }
  }

  if (depth !== 0) {
    throw new Error('Unbalanced parentheses');
  }

  return max_depth;
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
