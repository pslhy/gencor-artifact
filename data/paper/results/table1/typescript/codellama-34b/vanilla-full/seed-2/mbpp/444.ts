function trim_tuple(test_list: number[][], K: number): number[][] {
    return test_list.map(tup => tup.slice(K));
}

// Examples
console.log(trim_tuple([[1, 2, 3, 4], [5, 6, 7, 8]], 2)); // [[3, 4], [7, 8]]
console.log(trim_tuple([[1, 2, 3, 4]], 5)); // [[4]]
console.log(trim_tuple([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]], 3)); // [[4, 5, 6], [8, 9, 10], [12]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to trim each array by k in the given arrays.
