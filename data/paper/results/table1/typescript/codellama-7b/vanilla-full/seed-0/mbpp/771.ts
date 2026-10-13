function check_expression(exp: string): boolean {
  const stack = [];
  for (const token of exp) {
    if (token === '(' || token === '[' || token === '{') {
      stack.push(token);
    } else if (token === ')' || token === ']' || token === '}') {
      const top = stack.pop();
      if (top === "(" && token === ")" || top === "[" && token === "]" || top === "{" && token === "}") {
        continue;
      } else {
        return false;
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
//     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
