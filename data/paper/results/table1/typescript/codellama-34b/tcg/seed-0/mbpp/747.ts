function lcs_of_three(X: string, Y: string, Z: string): number {
  const dp: number[][][] = [[[0]
                ]]
  for (let i = 1; i <= X.length; i++) {
    for (let j = 1; j <= Y.length; j++) {
      for (let k = 1; k <= Z.length; k++) {
        if (X[i - 1] === Y[j - 1] && X[i - 1] === Z[k - 1]) {
          dp[i][j][k] = dp[i - 1][j - 1][k - 1] + 1;
        } else {
          dp[i][j][k] = Math.max(dp[i - 1][j][k], dp[i][j - 1][k], dp[i][j][k - 1]);
        }
      }
    }
  }
  return dp[X.length][Y.length][Z.length];
}

const X = "ABCBDAB";
const Y = "BDCABA";
const Z = "ABCBCD";

const result = lcs_of_three(X, Y, Z);

//result will be 3


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/