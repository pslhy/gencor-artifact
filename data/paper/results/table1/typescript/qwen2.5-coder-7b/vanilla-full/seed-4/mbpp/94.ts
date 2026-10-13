function index_minimum(test_list: [string, number][]): string { 
    return test_list.reduce((prev, curr) => (prev[1] < curr[1] ? prev : curr))[0];
}

// Example usage:
// const result = index_minimum([["Gfg", 7], ["is", 5], ["Best", 8]]);
// console.log(result); // Output: "is"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of arrays, write a function that returns the first value of the array with the smallest second value.
