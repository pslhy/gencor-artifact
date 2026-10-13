
function cal_sum(n: number): number {
   if (n == 1 || n == 2) {
      return n;
   } else {
      return cal_sum(n-1) + cal_sum(n-2);
   }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
