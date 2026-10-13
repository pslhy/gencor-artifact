function trim_tuple(test_list: number[][], K: number): number[][] {
    return test_list.map(arr => arr.slice(K, arr.length - K));
}

console.log(trim_tuple([[10, 20, 30, 40, 50], [15, 25, 35, 45, 55, 65, 75, 85]], 2));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to trim each array by k in the given arrays.
