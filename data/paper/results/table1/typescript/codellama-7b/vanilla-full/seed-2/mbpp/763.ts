function find_min_diff(arr: number[], n: number): number {
    let min_diff = Number.MAX_VALUE;
    arr.sort();
    for (let i = 0; i < n - 1; i++) {
        min_diff = Math.min(min_diff, arr[i + 1] - arr[i]);
    }
    return min_diff;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum difference between any two elements in a given array. https://www.geeksforgeeks.org/find-minimum-difference-pair/
