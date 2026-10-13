function big_sum(nums: number[]): number { 
    if (nums.length === 0) {
        throw new Error("Array is empty");
    }
    let max = Math.max(...nums);
    let min = Math.min(...nums);
    return max + min;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the largest and smallest value in a given array.
