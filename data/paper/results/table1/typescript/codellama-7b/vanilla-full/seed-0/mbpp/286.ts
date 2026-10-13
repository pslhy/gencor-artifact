function max_sub_array_sum_repeated(a: number[], n: number, k: number): number {
    const m = a.length;
    const dp = new Array(m * k).fill(0);
    for (let i = 0; i < n; i++) {
        for (let j = 0; j < m; j++) {
            dp[i * m + j] = a[j] + (i > 0 ? Math.max(dp[(i - 1) * m + j], dp[(i - 1) * m + (j + 1) % m]) : 0);
        }
    }
    return dp[m * k - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
