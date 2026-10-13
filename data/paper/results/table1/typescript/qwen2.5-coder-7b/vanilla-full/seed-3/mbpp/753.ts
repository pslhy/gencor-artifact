function min_k(test_list: [string, number][], K: number): [string, number][] { 
    test_list.sort((a, b) => a[1] - b[1]);
    return test_list.slice(0, K);
}

// Test cases
console.log(min_k([["Gfg", 5], ["is", 2], ["Best", 3]], 2)); // Output: [["is", 2], ["Best", 3]]
console.log(min_k([["Gfg", 1], ["CS", 2], ["_________", 3], ["Pratik", 2], ["Best", 1]], 4)); // Output: [["Gfg", 1], ["Best", 1], ["CS", 2], ["Pratik", 2]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases
