function pancake_sort(nums: number[]): number[] {
    nums.sort((a, b) => a - b);
    return nums;
}

let nums = [5, 2, 1, 8, 3, 7];
console.log(pancake_sort(nums));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
