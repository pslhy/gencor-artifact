function largest_divisor(n: number): number { return n === 1 ? -1 : Math.max(...Array.from({ length: Math.floor(n / 2) }, (_, i) => i + 1).filter(i => n % i === 0)); }


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     For a given number n, find the largest number that divides n evenly, smaller than n
//     >>> largest_divisor(15)
//     5
