
function is_nonagonal(n: number): number {
  if(n < 1){
     return 0;
  }
  return n * (n - 1) / 2;
}

function nth_nonagonal(n: number): number {
  let count = 0;
  for (let i = 1; count < n; i++) {
    if (is_nonagonal(i) === n) {
      count++;
    }
  }
  return is_nonagonal(i *

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.
