function bell_number(n: number): number {
    let result = 0;
    for (let k = 0; k <= n; k++) {
        result += Math.sqrt(Math.pow(24, k) * Math.pow(k, n) / Math.pow(k!=(n+1) / 2 * Math.pow(Math.sqrt(1-k), 2 * n + 1) * Math.exp(-2 * k * Math.PI * Math.PI / 3) / Math.pow(Math.sqrt(1-k), 2 * n + 1) * Math.exp(-2 * k * Math.PI * Math.PI / 3) / Math.pow(Math.sqrt(1-k), n + 1)


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.