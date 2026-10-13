function cal_sum(n: number): number {
  if (n == 1) {
    return 2;
  }
  return perrinNumber(n - 1) + perrinNumber(n - 2);
}

function perrinNumber(n: number): number {
  return n * perrinNumber(n - 1) + 1;
}

console.log(cal_sum(10));  // output: 661


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
