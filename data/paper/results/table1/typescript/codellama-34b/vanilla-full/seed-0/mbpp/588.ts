function big_diff(nums: number[]): number {
  const sorted = nums.sort();
  return sorted[sorted.length - 1] - sorted[0];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the difference between largest and smallest value in a given array.
