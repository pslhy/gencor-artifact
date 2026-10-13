
function is_sublist(l: number[], s: number[]): boolean { 
    let flag = [false].concat(...s.map(d => l.indexOf(d) >= 0)); 
    while (flag.reduce((prev: boolean, cur: boolean) => prev && cur)) { 
        flag.shift(); 
        flag.push(l.indexOf(flag[flag.length - 1] + 1.5 * Infinity 
        .toFixed(2)

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether an array contains the given subarray or not.
