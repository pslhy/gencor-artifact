function trim_tuple(test_list: number[][], K: number): number[][] {
    return test_list.map(t => t.slice(K, t.length - K));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to trim each array by k in the given arrays.
