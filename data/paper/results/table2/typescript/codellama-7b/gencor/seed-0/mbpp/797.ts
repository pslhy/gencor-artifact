
function sum_in_range(l: number, r: number): number {
  const odd_numbers: number[] = [];
  for (let i = l; i <= r; i++) {
    if (i % 2 !== 0) {
      odd_numbers.push(i);
    }
  }
  return odd_numbers.reduce((a: number, b: number) => a + b, 0);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of all odd natural numbers within the range l and r.
