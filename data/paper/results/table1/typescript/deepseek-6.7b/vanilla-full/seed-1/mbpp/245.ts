function max_sum(arr: number[]): number {
    let n = arr.length;
    if(n<3) {
        return -1;
    }
    
    let left_max = Array(n).fill(0);
    left_max[0] = arr[0];
    for (let i = 1; i < n; i++) {
        left_max[i] = Math.max(left_max[i-1], arr[i]);
    }

    let right_max = Array(n).fill(arr[n-1]);
    for (let i = n-2; i >= 0; i--) {
        right_max[i] = Math.max(right_max[i+1], arr[i]);
    }

    let bitonic_max_sum = Number.MIN_SAFE_INTEGER;
    for (let i = 0; i < n; i++) {
        bitonic_max_sum = Math.max(bitonic_max_sum, left_max[i] + arr[i] + right_max[i]);
    }

    return bitonic_max_sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
