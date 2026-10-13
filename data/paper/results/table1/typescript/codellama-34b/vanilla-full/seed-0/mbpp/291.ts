function count_no_of_ways(n: number, k: number): number {
    if (n === 1) {
        return k;
    } else if (n === 2) {
        return k * k;
    }

    // Initialize the dp array
    const dp: number[][] = [];
    dp[0] = [];
    dp[1] = [];

    // Initialize the values for the first two rows
    dp[0][0] = k;
    dp[0][1] = k * (k - 1);
    dp[1][0] = dp[0][1];
    dp[1][1] = k * (k - 1) * (k - 2);

    // Fill in the rest of the dp table
    for (let i = 2; i < n; i++) {
        dp[i] = [];
        dp[i][0] = dp[i - 1][1] + dp[i - 2][0];
        dp[i][1] = dp[i - 1][0] + dp[i - 2][1];
    }

    return dp[n - 1][0] + dp[n - 2][1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
