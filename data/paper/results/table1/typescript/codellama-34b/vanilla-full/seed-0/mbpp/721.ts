function maxAverageOfPath(cost: number[][]): number {
  const dp: number[][] = [];
  let maxAverage = 0;

  for (let i = 0; i < n; i++) {
    dp[i] = [];
    for (let j = 0; j < n; j++) {
      if (i == 0 && j == 0) {
        dp[i][j] = cost[i][j];
      } else if (i == 0) {
        dp[i][j] = dp[i][j - 1] + cost[i][j];
      } else if (j == 0) {
        dp[i][j] = dp[i - 1][j] + cost[i][j];
      } else {
        dp[i][j] = Math.max(dp[i - 1][j], dp[i][j - 1]) + cost[i][j];
      }
      maxAverage = Math.max(maxAverage, dp[i][j] / (i + j + 1));
    }
  }

  return maxAverage;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a square matrix of size N*N given as an array of arrays, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path.
