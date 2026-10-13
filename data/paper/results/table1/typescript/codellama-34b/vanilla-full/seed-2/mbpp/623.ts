function nth_nums(nums: number[], n: number): number[] {
    return nums.map((num) => Math.pow(num, n));
}

// Examples
console.log(nth_nums([1, 2, 3, 4], 2)); // [1, 4, 9, 16]
console.log(nth_nums([1, 2, 3, 4], 3)); // [1, 8, 27, 64]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to compute the n-th power of each number in an array.
