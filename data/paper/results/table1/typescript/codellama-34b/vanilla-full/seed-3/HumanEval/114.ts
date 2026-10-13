function minSubArraySum(nums: number[]): number {
  let minSum = Number.MAX_VALUE;
  let currentSum = 0;
  for (let i = 0; i < nums.length; i++) {
    currentSum += nums[i];
    if (currentSum < minSum) {
      minSum = currentSum;
    }
    if (currentSum < 0) {
      currentSum = 0;
    }
  }
  return minSum;
}

console.log(minSubArraySum([2, 3, 4, 1, 2, 4])); // logs 1
console.log(minSubArraySum([-1, -2, -3])); // logs -6


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of integers nums, find the minimum sum of any non-empty sub-array
//     of nums.
//     Example
//     >>> minSubArraySum([2, 3, 4, 1, 2, 4])
//     1
//     >>> minSubArraySum([-1, -2, -3])
//     -6
