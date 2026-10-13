function min_k(test_list: [string, number][], K: number): [string, number][] {
    const result: [string, number][] = [];
    for (const [string, num] of test_list) {
        if (result.length < K) {
            result.push([string, num]);
        } else if (num < result[K - 1][1]) {
            result.pop();
            result.push([string, num]);
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases
