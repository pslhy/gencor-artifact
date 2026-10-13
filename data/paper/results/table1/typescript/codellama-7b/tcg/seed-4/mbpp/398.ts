function sum_of_digits(nums: any[]): number {
  let sum: number = 0;
  for (let num of nums) {
    sum += num.toString().split("").map(Number).reduce((a: number, b: number) => Number(a + b));
  }
  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to compute the sum of digits of each number of a given array.