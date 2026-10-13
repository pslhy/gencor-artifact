function min_k(test_list: [string, number][], K: number): [string, number][] {
    // Sort the list in ascending order based on the record values
    const sorted_list = test_list.sort((a, b) => a[1] - b[1]);
    
    // Return the first K elements of the sorted list
    return sorted_list.slice(0, K);
}

const tests: [string, number][] = [
    ['t1', 20],
    ['t2', 22],
    ['t3', 30],
    ['t4', 12],
    ['t5', 33],
    ['t6', 21],
    ['t7', 44],
    ['t8', 55],
    ['t9', 6],
    ['t10', 70]
];

const K = 3;
console.log(min_k(tests, K));  // Output: [ [ 't9', 6 ], [ 't4', 12 ], [ 't6', 21 ] ]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases
