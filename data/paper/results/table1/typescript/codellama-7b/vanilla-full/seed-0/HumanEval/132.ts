function is_nested(string: string): boolean {
  const stack = [];
  for (const char of string) {
    if (char === '[') {
      stack.push(char);
    } else if (char === ']') {
      if (stack.length === 0) {
        return false;
      }
      const topChar = stack[stack.length - 1];
      if (topChar === '[') {
        stack.pop();
      } else {
        stack.push(char);
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
