function count_no_of_ways(n: number, k: number): number {
  const dp: number[][] = [];
  for (let i = 0; i <= n; i++) {
    dp[i] = new Array(k + 1).fill(0);
  }

  dp[0][0] = 1;
  for (let i = 1; i <= n; i++) {
    for (let j = 1; j <= k; j++) {
      dp[i][j] = dp[i - 1][j - 1] + dp[i - 1][j];
      if (j >= 2) {
        dp[i][j] += dp[i - 1][j - 2];
      }
    }
  }

  return dp[n][k];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
