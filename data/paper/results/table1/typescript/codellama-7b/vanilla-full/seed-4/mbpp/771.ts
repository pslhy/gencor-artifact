function check_expression(exp: string): boolean {
  let stack: Array<string> = [];
  for (let i = 0; i < exp.length; i++) {
    if (exp[i] === "(" || exp[i] === ")" || exp[i] === "{") {
      stack.push(exp[i]);
    } else if (exp[i] === ")" || exp[i] === "]" || exp[i] === "}" || stack.length === 0) {
      return false;
    } else {
      let top = stack.pop();
      if (exp[i] === ")" && top !== "(" || exp[i] === "]" && top !== "[" || exp[i] === "}" && top !== "{")
        return false;
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
