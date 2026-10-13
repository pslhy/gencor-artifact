function sum_negativenum(nums: number[]): number {
  let sum = 0;
  for (let num of nums) {
    if (num < 0) {
      sum += num;
    }
  }
  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of the negative numbers of a given array of numbers.
