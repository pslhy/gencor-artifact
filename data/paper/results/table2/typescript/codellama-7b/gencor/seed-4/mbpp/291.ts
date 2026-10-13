
function count_no_of_ways(n: number, k: number): number {
  if (n == 1 || k == 1) {
    return 1;
  }

  let dp = new Array(k).fill(0).map((_) => new Array(n).fill(0));

  // Initialize the first row
  for (let j = 0; j < k; j++) {
    dp[j][0] = 1;
  }

  // Fill in the rest of the dp table
  for (let i = 1; i < n; i++) {
    for (let j = 0; j < k; j++) {
      for (let l = 0; l < j; l++) {
        dp[j][i] += dp[l][i - 1] * dp[j - l - 1][i - 1];
      }
    }
  }

  // Find the total number of ways
  let total = 0;
  for (let j = 0; j < k; j++) {
    total += dp[j][n - 1];
  }

  return total;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
