function min_k(test_list: [string, number][], K: number): [string, number][] {
    const result: [string, number][] = [];
    for (let i = 0; i < K; i++) {
        if (test_list[i] === undefined) {
            break;
        }
        result.push(test_list[i]);
    }
    return result;
}

console.log(min_k([["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]], 3));
// Expected: [["test1", 1], ["test2", 2], ["test3", 3]]

console.log(min_k([["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]], 4));
// Expected: [["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4]]

console.log(min_k([["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]], 5));
// Expected: [["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]]

console.log(min_k([["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]], 6));
// Expected: [["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]]

console.log(min_k([["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]], 7));
// Expected: [["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]]

console.log(min_k([["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]], 8));
// Expected: [["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]]

console.log(min_k([["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]], 9));
// Expected: [["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]]

console.log(min_k([["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]], 10));
// Expected: [["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]]

console.log(min_k([["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]], 11));
// Expected: [["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]]

console.log(min_k([["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]], 12));
// Expected: [["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]]

console.log(min_k([["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]], 13));
// Expected: [["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]]

console.log(min_k([["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]], 14));
// Expected: [["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]]

console.log(min_k([["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]], 15));
// Expected: [["test1", 1], ["test2", 2], ["test3", 3], ["test4", 4], ["test5", 5]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases
