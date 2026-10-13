function max_sum_increasing_subseq(a: number[], n: number, index: number, k: number): number {
    if (index >= n || k == -1) {
        return 0;
    }

    let max_sum = 0;
    for (let i = index; i < n; i++) {
        let max_before_k = -1; // maximum value before k
        let max_after_k = -1; // maximum value after k
        for (let j = index; j < i; j++) {
            if (a[j] > max_before_k && a[j] < a[k]) {
                max_before_k = a[j];
            }
        }
        for (let j = k; j < n; j++) {
            if (a[j] > max_after_k && a[j] < a[i]) {
                max_after_k = a[j];
            }
        }
        let sum = a[i] + max_sum_increasing_subseq(a, n, i+1, k);
        if (max_before_k != -1 && max_after_k != -1 && sum > max_sum) {
            max_sum = sum;
        }
    }

    return max_sum;
}

let a = [50, 40, 10, 70, 60, 20, 30];
let n = a.length;
let index = 0;
let k = 4;  // k is the index of element
console.log(max_sum_increasing_subseq(a, n, index, k));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
