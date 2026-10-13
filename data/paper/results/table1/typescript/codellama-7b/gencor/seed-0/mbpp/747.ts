
function lcs_of_three(X: string, Y: string, Z: string): number {
  const dp: number[][] = [];

  for (let i = 0; i < X.length; i++) {
    dp[i] = new Array(Y.length).fill(0);

    for (let j = 0; j < Y.length; j++) {
      if (X[i] == Y[j] && Y[j] == Z[j]) {
        dp[i][j] = 1;
      }
    }
  }

  let max = 0;

  for (let i = 0; i < X.length; i++) {
    for (let j = 0; j < Y.length; j++) {
      if (dp[i][j] === 1) {
        max = Math.max(max, dp[i][j]);
      }
    }
  }

  return max;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
