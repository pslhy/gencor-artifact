function min_k(test_list: [string, number][], K: number): [string, number][] { 
    test_list.sort((a, b) => a[1] - b[1]); 
    return test_list.slice(0, K); 
} 

// Example usage:
let test_list = [['gfg', 5], ['is', 2], ['best', 3], ['for', 4]]; 
let K = 3; 
let res = min_k(test_list as [string, number][], K); 
let output = JSON.stringify(res);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases