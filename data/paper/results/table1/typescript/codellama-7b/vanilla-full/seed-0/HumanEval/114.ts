function minSubArraySum(nums: number[]): number {
  const sum = nums.reduce((a, b) => a + b, 0);
  if (sum < 0) {
    return sum;
  }

  // Initialize the minimum sum to infinity
  let minSum = Infinity;

  // Initialize the sum
  let currentSum = 0;

  // Start from the first index
  let start = 0;

  // Loop through the array
  for (let i = 0; i < nums.length; i++) {
    // Calculate the sum of the current sub-array
    currentSum += nums[i];

    // Check if the current sum is less than the minimum sum
    if (currentSum < minSum) {
      // Update the minimum sum
      minSum = currentSum;
    }

    // Check if the current sum is greater than the sum
    // of the entire array
    if (currentSum > sum) {
      // Reset the sum to 0
      currentSum = 0;

      // Increment the start index
      start++;
    }
  }

  // Return the minimum sum
  return minSum;
}


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
