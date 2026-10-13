function check_expression(exp: string): boolean {
   if (exp.length === 0) {
      return true;
   }

   const stack = [];
   for (let i = 0; i < exp.length; i++) {
      const c = exp[i];
      if (c === '(' || c === '{' || c === '[') {
         stack.push(c);
      } else if (c === ')' || c === '}' || c === ']') {
         if (stack.length === 0) {
            return false;
         } else {
            const top = stack.pop();
            if ((top === '(' && c === ')') || (top === '{' && c === '}') || (top === '[' && c === ']')) {
               continue;
            } else {
               return false;
            }
         }
      }
   }

   if (stack.length === 0) {
      return true;
   } else {
      return false;
   }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
