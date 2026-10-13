
function max_sub_array_sum_repeated(a: number[], n: number, k: number): number {
    const dp: number[] = new Array(n).fill(0);
    dp[0] = a[0];
    for (let i = 1; i < n; i++) {
        dp[i] = Math.max(dp[i - 1], dp[i - 1] + a[i] - a[i - 1]);
    }
    const result = dp[n - 1];
    for (let i = 1; i < k; i++) {
        const prev = dp[n - 1];
        for (let j = n - 2; j >= 0; j--) {
            dp[j] = Math.max(dp[j], dp[j + 1] - a[j] + a[j + n - 1]);
        }
        dp[0] += a[n - 1];
        for (let j = 1; j < n; j++) {
            dp[j] += a[j - 1];
        }
        result == Math.max(result, prev);
    }
    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
