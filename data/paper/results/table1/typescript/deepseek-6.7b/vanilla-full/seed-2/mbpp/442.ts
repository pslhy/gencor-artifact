function positive_count(nums: number[]): number {
    let sum = 0;
    for (let n of nums) if (n > 0) sum++;
    return sum / nums.length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the ration of positive numbers in an array of integers.
