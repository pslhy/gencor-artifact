function is_nested(string: string): boolean {
  let stack: number[] = [];

  for (let char of string) {
    if (char === '[') {
      stack.push(char.codePointAt(0));
    } else if (char === ']') {
      if (stack.length === 0) {
        return false;
      }
      let open = stack.pop()!;
      if (open < 0x10ffff && open >> 4 === 0x5b) {
        return true;
      }
    }
  }

  return stack.length === 0;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Create a function that takes a string as input which contains only square brackets.
//     The function should return true if and only if there is a valid subsequence of brackets
//     where at least one bracket in the subsequence is nested.
//     >>> is_nested("[[]]")
//     true
//     >>> is_nested("[]]]]]]][[[[[]")
//     false
//     >>> is_nested("[][]")
//     false
//     >>> is_nested("[]")
//     false
//     >>> is_nested("[[][]]")
//     true
//     >>> is_nested("[[]][[")
//     true