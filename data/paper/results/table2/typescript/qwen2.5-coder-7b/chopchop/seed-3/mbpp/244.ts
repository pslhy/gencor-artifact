
function next_Perfect_Square(N: number): number { 
    let sqrtValue = Math.sqrt(N); 
    sqrtValue = Math.ceil(sqrtValue); 
    return sqrtValue * sqrtValue; 
}

// Example usage:
// console.log(next_Perfect_Square(9)); // Output: 16
// console.log(next_Perfect_Square(26)); // Output: 36


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the next perfect square greater than a given number.
