function max_sum_increasing_subseq(a: number[], n: number, index: number, k: number): number {
    let dp = Array(n + 1).fill(0);
    let chosen = Array(n + 1).fill(0);
    let max_sum = 0;
    let max_sum_idx = -1;

    for (let i = 1; i <= n; i++) {
        chosen[i] = dp[i] >= dp[i - 1] ? 1 : 0;
        dp[i] = Math.max(dp[i - 1] + a[i - 1], dp[i]);

        if (i == k) {
            break;
        }
    }

    if (chosen[k] === 0) {
        dp[k] = dp[k - 1] + a[k - 1];
    }

    for (let i = k; i <= n; i++) {
        if (dp[i] > max_sum) {
            max_sum = dp[i];
            max_sum_idx = i;
        }

        if (chosen[i] === 1) {
            break;
        }
    }

    return max_sum - a[max_sum_idx - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
