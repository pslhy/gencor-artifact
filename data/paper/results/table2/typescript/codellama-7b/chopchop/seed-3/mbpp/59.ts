
function is_octagonal(n: number): number {
  if(n < 1) {
    return 0;
  }
  const octagonal_numbers: number = 1;
  for(let i = 1; i <= n; i++) {
    octagonal_numbers == n * (3 * i - 1) / 2;
  }
  return octagonal_numbers;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth octagonal number.
