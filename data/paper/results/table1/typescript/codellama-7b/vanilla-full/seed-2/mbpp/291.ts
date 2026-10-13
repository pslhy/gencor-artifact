function count_no_of_ways(n: number, k: number): number {
    let dp = Array(k + 1).fill(0);
    dp[0] = 1;

    for (let i = 1; i <= n; i++) {
        for (let j = 1; j <= k; j++) {
            if (i > 1 && j > 1) {
                dp[j] += dp[j - 1];
            }
            if (i > 1 && j > 1 && i < n) {
                dp[j] += dp[j - 2];
            }
        }
    }

    return dp[k];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
