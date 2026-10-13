function max_sum_increasing_subseq(a: number[], n: number, index: number, k: number): number {
    if (index > n || k < index) return Number.MIN_SAFE_INTEGER;

    let max_val: number = 0;
    for (let i = index; i < n; i++) {
        let sum: number = 0;
        if (i + 1 < n && a[i + 1] > a[i]) {
            sum = a[i] + max_sum_increasing_subseq(a, n, i + 1, k);
        }
        if (i === k) {
            sum = Math.max(sum, a[i] + max_sum_increasing_subseq(a, n, i + 1, k + 1));
        }
        max_val = Math.max(max_val, sum);
    }
    return max_val;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
