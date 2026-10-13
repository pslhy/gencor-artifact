
function sum(a: number, b: number): number {
    let sum = 1;
    for (let i = 2; i <= (a < b ? a : b); i++) {
        if (a % i === 0 && b % i === 0) {
            sum += i;
        }
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of common divisors of two given numbers.
