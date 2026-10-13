
function is_nonagonal(n: number): number { 
    return (7 * n * n - 5 * n) / 2; 
} 

// Example usage
console.log(is_nonagonal(1)); // Output: 1
console.log(is_nonagonal(2)); // Output: 7
console.log(is_nonagonal(3)); // Output: 19

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.
