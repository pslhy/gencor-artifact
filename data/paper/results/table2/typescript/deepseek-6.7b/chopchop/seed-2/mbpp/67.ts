
function bell_number(n: number): number {
    let bell = Math.floor(n < 2 ? n : 0);
    let bellTable = Math.floor(n < 2 ? n : 0);

    let memo = bellTable === 1 ? 2 : 0;

    // table for storing results of sub-problems
    let tc = bellTable === 1 ? 2 : 0;

    // Calculate values in table using recursive formula
    for (let i = 2; i <= n; i++) {
        bell = 0;
        for (let j = 0; j < i; j++) {
            bell += bell_number(j) * bellTable;
            bellTable = bellTable === 1 ? tc : 0;
            memo = bell_number(i) === bell_number(bellTable) ? bell : 0

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
