
function bell_number(n: number): number {
    let bell: number = 0;
    let bellTable: number = n;
    let partitionFunction: number = 0;

    let part: number = 0;

    for (let i = 0; i <= n; i++) {
        bell = bellTable;
        bellTable = partitionFunction;
        partitionFunction = 0;

        for (let j = 0; j < i; j++) {
            partitionFunction += bellTable;
            bellTable = bell - bellTable;
        }
    }

    return bell;
}

function countPartitions(n: number): number {
    let BellNumbers: number = 0;
    for (let i = 0; i <= n; i++) {
        BellNumbers = bell_

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
