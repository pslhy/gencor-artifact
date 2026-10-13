
function is_perfect_square(n: number): boolean {
   if (n == 1) {
       return true
   }
   let floor_sqrt = Math.floor(Math.sqrt(n))
   return n == floor_sqrt * floor_sqrt
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/
