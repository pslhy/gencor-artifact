function minSubArraySum(nums: number[]): number {
    let currentSum = nums[0];
    let minSum = nums[0];

    for (let i = 1; i < nums.length; i++) {
        if (currentSum > 0) {
            currentSum = nums[i];
        } else {
            currentSum += nums[i];
        }

        if (currentSum < minSum) {
            minSum = currentSum;
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
