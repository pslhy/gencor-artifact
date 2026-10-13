function is_sublist(l: number[], s: number[]): boolean { 
    let flag = [false].concat(...s.map(n => l.includes(n) ? [true] : [false])); 
    return flag.reduce((a: boolean, b: boolean) => a && b); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether an array contains the given subarray or not.