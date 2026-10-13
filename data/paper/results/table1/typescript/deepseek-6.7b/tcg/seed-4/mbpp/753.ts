function min_k(test_list: [string, number][], K: number): [string, number][] {
    return test_list.sort((a, b) => a[1] - b[1]).slice(0, K);
}

let test_list = [['item1', 97], ['item2', 98], ['item3', 100], ['item4', 99], ['item5', 97], ['item6', 98]];
let K = 3;


min_k(test_list.reverse().sort((a, b) => a[1] === b[1] ? 0 : a[1] < b[1] ? 1 : -1).slice(0, K).sort((a, b) => test_list.indexOf(a) - test_list.indexOf(b)).reverse()


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases