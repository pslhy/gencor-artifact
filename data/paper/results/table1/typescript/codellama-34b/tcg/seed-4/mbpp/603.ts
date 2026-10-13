function get_ludic(n: number): number[] {
   if (n <= 1) {
       return [];
   }
   let lucid: number[] = [];
   let check: number[] = Array(n + 1).fill(true, 0, n + 1)


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.