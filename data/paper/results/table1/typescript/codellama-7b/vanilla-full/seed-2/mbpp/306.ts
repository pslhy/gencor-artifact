function max_sum_increasing_subseq(a: number[], n: number, index: number, k: number): number {
    let dp = Array(n + 1).fill(0);
    for (let i = 1; i <= n; i++) {
        if (a[i] >= a[i - 1]) {
            dp[i] = dp[i - 1] + a[i];
        } else {
            dp[i] = a[i];
        }
    }
    
    let max_val = 0;
    for (let i = index; i <= k - 1; i++) {
        max_val = Math.max(max_val, dp[i]);
    }
    
    return max_val;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
