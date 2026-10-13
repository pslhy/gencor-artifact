function max_sum(arr: number[]): number {
    let n = arr.length;
    if (n < 3) return -1;

    let inc: number[] = new Array(n).fill(0);
    inc[0] = arr[0];
    let dec: number[] = new Array(n).fill(0);
    dec[n-1] = arr[n-1];

    for (let i = 1; i < n; i++) {
        inc[i] = arr[i] > arr[i-1] ? inc[i-1] + arr[i] : arr[i];
    }

    for (let i = n-2; i >= 0; i--) {
        dec[i] = arr[i] > arr[i+1] ? dec[i+1] + arr[i] : arr[i];
    }

    let max_sum = Number.MIN_SAFE_INTEGER;
    for (let i = 0; i < n; i++) {
        if (inc[i] > max_sum) max_sum = inc[i];
        if (dec[i] > max_sum) max_sum = dec[i];
        if (inc[i] < arr[i] && (i-1 >= 0 && dec[i+1] < arr[i] && i+1 < n)) {
            max_sum = Math.max(max_sum, inc[i] + dec[i+1] - arr[i]);
        }
    }
    return max_sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
