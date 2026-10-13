function is_nonagonal(n: number): number {
  if (n == 1) {
    return 1;
  }
  let num = 1;
  let i = 1;
  while (i < n) {
    i += Math.trunc((2*num) / (1 + Math.sqrt(3)));
    num++;
  }
  return num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.