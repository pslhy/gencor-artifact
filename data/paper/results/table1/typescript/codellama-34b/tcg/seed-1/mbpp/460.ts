function Extract(lst: number[][]): number[] {
    return lst.map(arr => arr.includes(1) ? arr[0] : null)
           .filter(x => x != null)
           .sort((a, b) => (a !== null) ? ((b !== null) ? 0 : 1) : -1) as number[];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to get the first element of each subarray.