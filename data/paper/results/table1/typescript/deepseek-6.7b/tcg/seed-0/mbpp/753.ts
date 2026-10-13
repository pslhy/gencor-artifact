function min_k(test_list: [string, number][], K: number): [string, number][] {
    // Sort the array based on the value portion
    test_list.sort((a, b) => a[1] - b[1]);
    // Return the first k elements
    return test_list.slice(0, K);
}

// Test cases
let test_list1 = [['Geeks', 3], ['for', 2], ['Geeks', 1], ['for', 4]];
let test_list2 = [['Is', 5], ['this', 3], ['a', 2], ['test', 4]];

// Expected results
let ans1 = min_k(test_list1.slice(0, 2).concat(test_list1.slice(2,4), test_list1.slice(4,6)).slice(0, 2).sort((a, b) => a[1] < b[1] ? -1 : 1)


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases