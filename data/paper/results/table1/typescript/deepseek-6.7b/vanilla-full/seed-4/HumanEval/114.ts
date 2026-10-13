function minSubArraySum(nums: number[]): number {
    let minSum = Infinity;
    let currentSum = 0;
  
    for (let num of nums) {
        currentSum += num;
        if (currentSum < minSum) {
            minSum = currentSum;
        }
        if (currentSum > 0) {
            currentSum = 0;
        }
    }
  
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
