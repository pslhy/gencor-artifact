function two_unique_nums(nums: number[]): number[] {
    let uniqueNums: number[] = [];
    for (let i = 0; i < nums.length; i++) {
        if (uniqueNums.indexOf(nums[i]) === -1) {
            uniqueNums.push(nums[i]);
        }
    }
    return uniqueNums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove duplicate numbers from a given number of arrays.
