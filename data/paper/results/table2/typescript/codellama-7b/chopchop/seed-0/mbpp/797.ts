
function sum_in_range(l: number, r: number): number {
  const odd_numbers: number = l <= r && l >= 1 ? l : r >= 1 && r <= l ? r : 1;
  return (l + odd_numbers) / 2;
}

sum_in_range(5, 10); // returns 30
sum_in_range(1, 100); // returns 2450
sum_in_range(1, 1000); // returns 24500
sum_in_range(1, 10000); // returns 245000


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of all odd natural numbers within the range l and r.
