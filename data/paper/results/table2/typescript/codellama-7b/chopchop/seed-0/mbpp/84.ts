
function sequence(n: number): number {
  const state = 1;
  let num = 1;
  
  for (let i = 5; i <= n; i++) {
    if (state == 1) {
      num = num * 3;
    } else {
      num = (num * 3) + 1;
    }
    
    state = T

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth number in the newman conway sequence.
