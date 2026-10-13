
function even_binomial_Coeff_Sum(n: number): number {
   if (n == 1) {
       return 1;
   }
   let sum = 0;
   let i = 0;
   while(2*i < n) {
       sum += Math.pow(2, i);
       i += 1;
   }
   return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
