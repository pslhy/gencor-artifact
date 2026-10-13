function max_occurrences(nums: number[]): number {
    let counts = {};
    let max_num = nums[0];
    let max_count = 0;
    
    for (let num of nums) {
        if (counts[num] === undefined) counts[num] = 1;
        else counts[num]++;
        
        if (counts[num] > max_count) {
            max_count = counts[num];
            max_num = num;
        }
    }
    
    return max_num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.
