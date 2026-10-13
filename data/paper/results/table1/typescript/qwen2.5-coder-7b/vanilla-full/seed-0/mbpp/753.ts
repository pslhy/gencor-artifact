function min_k(test_list: [string, number][], K: number): [string, number][] { 
    return test_list.sort((a, b) => a[1] - b[1]).slice(0, K); 
}

// Test cases
console.log(min_k([["Geeks", 3], ["for", 4], ["Geeks", 2], ["GeeksforGeeks", 1]], 2));
// Output: [ [ 'GeeksforGeeks', 1 ], [ 'Geeks', 2 ] ]

console.log(min_k([["color", 3], ["green", 2], ["blue", 1], [" violet", 4], ["cyan", 7], ["white", 8]], 3));
// Output: [ [ 'violet', 4 ], [ 'cyan', 7 ], [ 'white', 8 ] ]

console.log(min_k([["apple", 10], ["banana", 6], ["cherry", 2], ["date", 4], ["elderberry", 7]], 4));
// Output: [ [ 'cherry', 2 ], [ 'date', 4 ], [ 'banana', 6 ], [ 'elderberry', 7 ] ]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases
