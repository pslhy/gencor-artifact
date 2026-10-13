
function min_k(test_list: [string, number][], K: number): [string, number][] {
    // Sort the array based on the value portion
    test_list.sort((a, b) => a[1] - b[1]);
    // Return the first k elements
    return test_list.slice(0, K);
}

// Test cases
let test_list1 = [['Geeks', 3], ['for', 2], ['Geeks', 1], ['for', 4]];
let test_list2 = [['Is', 5], ['this', 3], ['a', 2], ['test', 4]];

console.log(min_k(test_list1.slice(0, test_list1.length - 1).concat(test_list1[test_list1.length - 1]).concat(test_list1.slice(0, 1)).concat(test_list1.slice(1, test_list1.length - 1).concat(test_list1[0])).concat(test_list1.slice(1, 2)).concat(test_list1.slice(2, test_list1.length - 1).concat(test_list1[1])).concat(test_list1.slice(2, 3).concat(test_list1[2])).concat(test_list1.slice(3, 4).concat(test_list1[3]).concat(test_list1.slice(4, test_list1.length))).concat(test_list2.slice(0, test_list2.length - 1).concat(test_list2[test_list2.length - 1]).concat(test_list2.slice(0, 1)).concat(test_list2.slice(1, test_list2.length - 1).concat(test_list2[0])).concat(test_list2.slice(1, 2)).concat(test_list2.slice(2, test_list2.length))).sort((a, b) => a[1] - b[1]

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases
