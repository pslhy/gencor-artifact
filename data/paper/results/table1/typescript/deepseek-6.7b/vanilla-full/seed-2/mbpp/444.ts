function trim_tuple(test_list: number[][], K: number): number[][] {
    return test_list.map((arr: number[]) => arr.slice(K, arr.length - K));
}

console.log(trim_tuple([[6, 7, 5, 13, 6], [3, 2, 1, 8, 4, 3, 2, 1], [13, 1, 7, 10]], 1));
// prints: [ [ 7, 5, 13, 6 ], [ 2, 1, 8, 4, 3, 2 ], [ 1, 7, 10 ] ]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to trim each array by k in the given arrays.
