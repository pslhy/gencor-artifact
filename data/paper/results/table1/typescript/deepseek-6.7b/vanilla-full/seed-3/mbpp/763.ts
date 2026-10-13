function find_min_diff(arr: number[], n: number): number {
    let diff = Number.MAX_VALUE;
    arr = arr.sort((a, b) => a - b);
    for (let i = 0; i < n - 1; i++) {
        if (arr[i + 1] - arr[i] < diff) {
            diff = arr[i + 1] - arr[i];
        }
    }
    return diff;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum difference between any two elements in a given array. https://www.geeksforgeeks.org/find-minimum-difference-pair/
