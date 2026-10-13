function starts_one_ends(n: number): number {
    return n === 1 ? 1 : 8 * Math.pow(8, n - 2) + 8;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer n, return the count of the numbers of n-digit
//     positive integers that start or end with 1.
