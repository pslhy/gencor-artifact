function positive_count(nums: number[]): number { 
    let countPos = nums.filter(num => num > 0).length;
    return countPos / nums.length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the ration of positive numbers in an array of integers.
