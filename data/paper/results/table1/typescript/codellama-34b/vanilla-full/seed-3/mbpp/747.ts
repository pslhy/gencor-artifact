function lcs_of_three(X: string, Y: string, Z: string): number {
  let dp: number[][] = [];
  for (let i = 0; i < X.length; i++) {
    dp.push([]);
    for (let j = 0; j < Y.length; j++) {
      dp[i].push([]);
      for (let k = 0; k < Z.length; k++) {
        dp[i][j].push(0);
      }
    }
  }
  for (let i = 0; i < X.length; i++) {
    for (let j = 0; j < Y.length; j++) {
      for (let k = 0; k < Z.length; k++) {
        if (X[i] === Y[j] && Y[j] === Z[k]) {
          dp[i][j][k] = dp[i - 1][j - 1][k - 1] + 1;
        } else {
          dp[i][j][k] = Math.max(dp[i - 1][j][k], Math.max(dp[i][j - 1][k], dp[i][j][k - 1]));
        }
      }
    }
  }
  return dp[X.length - 1][Y.length - 1][Z.length - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
