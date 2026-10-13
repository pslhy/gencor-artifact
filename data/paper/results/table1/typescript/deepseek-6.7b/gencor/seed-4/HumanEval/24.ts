
function largest_divisor(n: number): number {
    for(let x = n - 1; x > 0; x--) {
        if (n % x === 0) {
            return x;
        }
    } 
    return -1; // if n is a prime number
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     For a given number n, find the largest number that divides n evenly, smaller than n
//     >>> largest_divisor(15)
//     5
