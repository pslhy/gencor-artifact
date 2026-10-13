function sum_digits(n: number): number {
  if (n == 0) {
    return 0;
  }
  return n % 10 + sum_digits(Math.floor(n / 10));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get the sum of the digits of a non-negative integer.
