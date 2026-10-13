function max_occurrences(nums: number[]): number {
    let result = 0;
    let count = 0;
    for (let i = 0; i < nums.length; i++) {
        if (nums[i] == result) {
            count++;
        } else if (nums[i] > result) {
            result = nums[i];
            count = 1;
        }
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.
