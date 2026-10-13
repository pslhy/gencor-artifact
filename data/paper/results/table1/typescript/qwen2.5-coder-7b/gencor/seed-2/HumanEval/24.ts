
function largest_divisor(n: number): number { 
    for (let divisor = Math.floor(n / 2); divisor >= 1; divisor--) { 
        if (n % divisor === 0) { 
            return divisor; 
        } 
    } 
    return 1; // If no divisor found, return 1 (since every number is divisible by 1)
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     For a given number n, find the largest number that divides n evenly, smaller than n
//     >>> largest_divisor(15)
//     5
