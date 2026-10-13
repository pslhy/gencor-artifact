
function sum(a: number, b: number): number {
  const divisors: number = a;
  let sum: number = 0;

  for (let i: number = 1; i < divisors; i++) {
    if (a % i === 0 && b % i === 0) {
      sum += i;
    }
  }

  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of common divisors of two given numbers.
