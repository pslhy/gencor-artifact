function max_occurrences(nums: number[]): number {
    let max_count = 0;
    let max_index = 0;

    for (let i = 0; i < nums.length; i++) {
        const count = nums.filter(num => num === nums[i]).length;
        if (count > max_count) {
            max_count = count;
            max_index = i;
        }
    }
    
    return nums[max_index];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.
