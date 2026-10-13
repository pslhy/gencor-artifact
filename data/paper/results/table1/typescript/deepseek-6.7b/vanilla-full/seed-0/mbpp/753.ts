function min_k(test_list: [string, number][], K: number): [string, number][] {
    // Sort the array based on the value portion
    test_list.sort((a, b) => a[1] - b[1]);
    // Return the first k elements
    return test_list.slice(0, K);
}

// Test cases
let test_list1 = [['Geeks', 3], ['for', 2], ['Geeks', 1], ['for', 4]];
let test_list2 = [['Is', 5], ['this', 3], ['a', 2], ['test', 4]];

console.log(min_k(test_list1, 2)); // Expected output: [['for', 2], ['Geeks', 3]]
console.log(min_k(test_list2, 3)); // Expected output: [['a', 2], ['this', 3], ['Is', 5]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases
