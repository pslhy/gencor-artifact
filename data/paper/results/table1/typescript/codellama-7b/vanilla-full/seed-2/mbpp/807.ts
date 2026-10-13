function first_odd(nums: number[]): number {
    for (let i = 0; i < nums.length; i++) {
        if (nums[i] % 2 !== 0) {
            return nums[i];
        }
    }
    return null;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first odd number in a given array of numbers.
