
function sum_Of_product(n: number): number {
   let sum: number = 0;
   for (let i: number = 1; i < n; i++) {
       sum: sum + i * (n-i+1)
   }
   return sum;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the product of consecutive binomial co-efficients.
