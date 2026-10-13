
function next_power_of_2(n: number): number { 
    // If n is less than or equal to 1, return 2
    if (n <= 1) {
        return 2; 
    } 
    // Find the position of the highest set bit
    let pos = Math.floor(Math.log2(n)); 
    // Calculate the next power of 2 by raising 2 to the power of (pos + 1)
    return Math.pow(2, pos + 1); 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest power of 2 greater than or equal to n.
