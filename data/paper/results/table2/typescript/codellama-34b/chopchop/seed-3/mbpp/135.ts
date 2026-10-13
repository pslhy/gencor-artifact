
function hexagonal_num(n: number): number {
  if(n < 0){
     return 0;
  }
  return n * (2 * n - 1);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth hexagonal number.
