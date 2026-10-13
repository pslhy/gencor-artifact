
function count_no_of_ways(n: number, k: number): number {
    let dp = Array(n + 1).fill(0);
    dp[0] = k;
    dp[1] = k * k;
    for (let i = 2; i <= n; i++) {
        dp[i] = dp[i - 1] * (k - 1) + dp[i - 2] * (k - 1);
    }
    return dp[n];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
