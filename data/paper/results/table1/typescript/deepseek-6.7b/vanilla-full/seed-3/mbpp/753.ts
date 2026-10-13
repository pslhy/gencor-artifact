function min_k(test_list: [string, number][], K: number): [string, number][] {
    // sort the list in ascending order
    test_list.sort((a, b) => a[1] - b[1]);

    // return first K records of the sorted list
    return test_list.slice(0, K);
}

console.log(min_k([ ["Elroy", 1], ["Gordon", 2], ["Richard", 3], ["Mary", 4] , ["Tom", 5]], 2)); // [["Elroy", 1], ["Gordon", 2]]
console.log(min_k([ ["A", 15], ["B", 11], ["C", 23], ["D", 13] , ["E", 21]], 3)); // [["B", 11], ["D", 13], ["A", 15]]
console.log(min_k([ ["F", 8], ["G", 9], ["H", 10], ["I", 12] , ["J", 7]], 4)); // [["J", 7], ["H", 10], ["G", 9], ["F", 8]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases
