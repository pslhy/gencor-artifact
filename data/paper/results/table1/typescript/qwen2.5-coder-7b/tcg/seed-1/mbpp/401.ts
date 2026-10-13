function add_nested_tuples(test_tup1: number[][], test_tup2: number[][]): number[][] { 
    return test_tup1.map((_outer, index) => 
        test_tup2[index].map((value, innerIndex) =>


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise addition of array elements in the given two nested arrays.