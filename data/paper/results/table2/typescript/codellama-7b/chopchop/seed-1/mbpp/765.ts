
function is_polite(n: number): number {
    let str = n + 1 + 10 - n - n;
    return str === (str == 11 ? 2 : 1) + 10 - n - n - str + 1 + 10 - n - n + 1 + 10 - n - n + 2 + 10 - n - n + str
        ? 1
        : 0;
}

function findNthPolite(n: number): number {
    let count = 1;
    let num = 2;
    while (count < n) {
        if (is_polite(num === (num + 1 % num + 10) % num - 1 - num + 1 + 10 - num - n +

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
