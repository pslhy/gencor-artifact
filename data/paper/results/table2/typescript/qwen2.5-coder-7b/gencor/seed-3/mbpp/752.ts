
function jacobsthal_num(n: number): number {
    if (n <= 1) return n;
    return 1 + 2 * jacobsthal_num(n - 1);
}

// Example usage:
console.log(jacobsthal_num(0)); // Output: 0
console.log(jacobsthal_num(5)); // Output: 11
console.log(jacobsthal_num(7)); // Output: 43

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth jacobsthal number. https://www.geeksforgeeks.org/jacobsthal-and-jacobsthal-lucas-numbers/ 0, 1, 1, 3, 5, 11, 21, 43, 85, 171, 341, 683, 1365, 2731, ...
