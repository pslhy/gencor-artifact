function two_unique_nums(nums: number[]): number[] {
  return [...new Set([].concat(...nums.filter((a, i) => a !== nums[i - 1] && a !== nums[i + 1] && a !== nums[i - 2] && a !== nums[i + 2] && a !== nums[i - 3] && a !== nums[i + 3] ) 
     .map((a) => a % 4 === 1 ? (a) % 1000000007


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove duplicate numbers from a given number of arrays.