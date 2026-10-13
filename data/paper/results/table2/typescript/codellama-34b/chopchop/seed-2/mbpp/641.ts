
function is_nonagonal(n: number): number {
    return n * (n - 1) * (n - 2) * (n - 3) * (n - 4) * (n - 5) * (n - 6) * (n - 7) * (n - 8)
 
    // Alternatively, you can use a mathematical formula to find the nth nonagonal number:
    // return (n * (n - 1) * (n - 2) * (n - 3) * (n - 4) * (n - 5) * (n - 6) * (n - 7) * (n - 8)) / 9
 
    // If you want to return the nth nonagonal number as a string, you can use a template literal:
    // return `The nth nonagonal number is: ${{n * (n - 1) * (n - 2) * (n - 3) * (n - 4) * (n - 5) * (n - 6) * (n - 7) * (n - 8)}}`
 
    // If you want to return the nth nonagonal number as a string, you can use a template literal and the `join` method:
    // return `The nth nonagonal number is: ${[n * (n - 1) * (n - 2) * (n - 3) * (n - 4) * (n- 5) * (n - 6) * (n - 7) * (n - 8)].join

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.
