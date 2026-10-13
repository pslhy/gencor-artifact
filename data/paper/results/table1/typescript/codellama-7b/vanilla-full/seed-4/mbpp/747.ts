function lcs_of_three(X: string, Y: string, Z: string): number {
  let dp: number[][] = Array(X.length + 1);
  for (let i = 0; i <= X.length; i++) {
    dp[i] = Array(Y.length + 1);
  }

  for (let i = 1; i <= X.length; i++) {
    for (let j = 1; j <= Y.length; j++) {
      if (X[i - 1] === Y[j - 1] && X[i - 1] === Z[j - 1]) {
        dp[i][j] = dp[i - 1][j - 1] + 1;
      } else {
        dp[i][j] = Math.max(dp[i - 1][j], Math.max(dp[i][j - 1], dp[i - 1][j - 1]));
      }
    }
  }

  return dp[X.length][Y.length];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
