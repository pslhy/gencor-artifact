function big_sum(nums: number[]): number {
    let min = nums[0];
    let max = nums[0];

    for (const num of nums) {
        if (num > max) {
            max = num;
        }
        if (num < min) {
            min = num;
        }
    }

    return max + min;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the largest and smallest value in a given array.
