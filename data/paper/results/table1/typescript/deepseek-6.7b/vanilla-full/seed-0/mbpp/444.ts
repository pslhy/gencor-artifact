function trim_tuple(test_list: number[][], K: number): number[][] {
    return test_list.map(arr => arr.slice(0, arr.length - K));
}

console.log(trim_tuple([[1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 11, 12]], 2));
// Output: [[1, 2], [6, 7, 8, 9]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to trim each array by k in the given arrays.
