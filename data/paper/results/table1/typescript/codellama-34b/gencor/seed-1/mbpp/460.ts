
function Extract(lst: number[][]): number[] {
    return lst.map(arr => arr.includes(1) ? arr[0] : null).filter(v => v != null);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to get the first element of each subarray.
