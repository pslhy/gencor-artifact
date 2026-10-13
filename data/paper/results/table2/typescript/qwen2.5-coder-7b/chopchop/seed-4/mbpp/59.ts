
function is_octagonal(n: number): number { 
    // The formula for the nth octagonal number is n * (3n - 2)
    // We rearrange the formula to solve for n: n = (sqrt(5 * n^2 - 4) + 2) / 3
    let potentialN = (Math.sqrt(5 * n * n - 4) + 2) / 3;
    return potentialN === Math.floor(potentialN) ? potentialN : -1;
}

// Example usage:
// console.log(is_octagonal(2)); // Should return 8
// console.log(is_octagonal(4)); // Should return 22


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth octagonal number.
