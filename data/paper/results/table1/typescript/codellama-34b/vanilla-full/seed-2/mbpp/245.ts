function max_sum(arr: number[]): number {
    let n = arr.length;
    let min_left = arr.slice();
    let max_right = arr.slice();
    min_left[0] = arr[0];
    max_right[n-1] = arr[n-1];
    for (let i = 1; i < n; i++) {
        min_left[i] = Math.min(min_left[i-1], arr[i]);
        max_right[n-1-i] = Math.max(max_right[n-i], arr[n-1-i]);
    }
    let max_sum = 0;
    for (let i = 0; i < n; i++) {
        max_sum = Math.max(max_sum, min_left[i] + max_right[i]);
    }
    return max_sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
