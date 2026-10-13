function max_sub_array_sum_repeated(a: number[], n: number, k: number): number {
    const arr = [...a.slice(0, n)].flatMap(() => a);
    const size = arr.length;
    const dp = new Array(size).fill(0);
    dp[0] = arr[0];
    for (let i = 1; i < size; i++) {
        dp[i] = Math.max(arr[i], dp[i - 1] + arr[i]);
    }
    return dp.reduce((a, b) => Math.max(a, b));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
