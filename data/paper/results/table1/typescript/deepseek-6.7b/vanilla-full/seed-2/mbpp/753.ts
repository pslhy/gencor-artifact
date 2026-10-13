function min_k(test_list: [string, number][], K: number): [string, number][] {
    // Sort the input list in ascending order based on the second element of each tuple
    test_list.sort((a, b) => a[1] - b[1]);

    // Return the first K elements from the sorted list
    return test_list.slice(0, K);
}

console.log(min_k([['gfg', 2], ['is', 7], ['b', 1], ['best', 8], ['for', 4]], 3));
console.log(min_k([['india', 2], ['py', 7], ['cpp', 1], ['gfg', 8], ['c', 4]], 4));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases
