function split_Arr(l: number[], n: number): number[] {
    let arr1 = l.slice(0, n);
    let arr2 = l.slice(n);
    return arr2.concat(arr1);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to split an array at the nth eelment and add the first part to the end.
