function split_Arr(l: number[], n: number): number[] {
    let output = l.slice(n, l.length);
    output = output.concat(l.slice(0, n));
    return output;
}
console.log(split_Arr([1, 2, 3, 4, 5, 6], 3)); // [ 4, 5, 6, 1, 2, 3 ]

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to split an array at the nth eelment and add the first part to the end.
