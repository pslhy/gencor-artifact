function max_product(arr: number[]): number {
    let dp = Array(arr.length).fill(1);
    let max = Number.MIN_VALUE;

    for (let i = 0; i < arr.length; i++) {
        dp[i] = dp[i - 1] * arr[i];
        max = Math.max(max, dp[i]);
    }

    return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
