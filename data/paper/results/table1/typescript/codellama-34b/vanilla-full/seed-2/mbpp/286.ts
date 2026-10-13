function max_sub_array_sum_repeated(a: number[], n: number, k: number): number {
    let dp = Array(k + 1).fill(0);
    let max_sum = 0;

    for (let i = 0; i < n; i++) {
        for (let j = 0; j < k; j++) {
            dp[j] += a[i];
            max_sum = Math.max(max_sum, dp[j]);
        }
    }

    return max_sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
