function largest_divisor(n: number): number {
    let divisor = n;

    while (divisor >= 1) {
        if (n % divisor === 0) {
            return divisor;
        }

        divisor--;
    }

    return null

    +  
    /* Solution description: A Function finds the largest number that divides n evenly, smaller than n by first establishing the initial value for the divisor to be the given number n. Then, it decreases the divisor 1 for each iteration until a condition where n % divisor === 0 is met and the divisor is returned. If the loop hits 0 and n % divisor is not 0, a valu of null is returned */


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     For a given number n, find the largest number that divides n evenly, smaller than n
//     >>> largest_divisor(15)
//     5