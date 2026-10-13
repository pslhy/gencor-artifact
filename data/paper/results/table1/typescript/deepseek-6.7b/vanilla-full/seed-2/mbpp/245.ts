function max_sum(arr: number[]): number {
    let n = arr.length;
    if (n < 3) return -1;

    let left = new Array(n).fill(0);
    left[0] = arr[0];

    for (let i = 1; i < n; i++) {
        left[i] = Math.max(left[i - 1], arr[i]);
    }

    let right = new Array(n).fill(0);
    right[n - 1] = arr[n - 1];

    for (let j = n - 2; j >= 0; j--) {
        right[j] = Math.max(right[j + 1], arr[j]);
    }

    let max_sum = 0;
    for (let k = 0; k < n; k++) {
        max_sum = Math.max(max_sum, left[k] + right[k] - arr[k]);
    }

    return max_sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
