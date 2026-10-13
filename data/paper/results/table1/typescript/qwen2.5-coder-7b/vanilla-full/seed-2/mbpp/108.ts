function merge_sorted_list(num1: number[], num2: number[], num3: number[]): number[] { 
    return [...num1, ...num2, ...num3].sort((a, b) => a - b); 
}

// Example usage:
const result = merge_sorted_list([1, 3, 5], [2, 4, 6], [0, 7, 8, 9]);
console.log(result); // Output: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three arrays into a single sorted array.
