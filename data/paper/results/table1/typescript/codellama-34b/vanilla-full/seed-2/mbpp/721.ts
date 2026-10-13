function maxAverageOfPath(cost: number[][]): number {
  let maxAverage = -Infinity;
  const n = cost.length;

  // Initialize dp table with a value of -Infinity
  const dp: number[][] = [];
  for (let i = 0; i < n; i++) {
    dp[i] = [];
    for (let j = 0; j < n; j++) {
      dp[i][j] = -Infinity;
    }
  }

  // Initialize the top-left corner with the cost of the first cell
  dp[0][0] = cost[0][0];

  // Loop through each cell in the matrix
  for (let i = 1; i < n; i++) {
    for (let j = 1; j < n; j++) {
      // Compute the maximum average for the current cell
      const avg = (cost[i][j] + dp[i - 1][j] + dp[i][j - 1]) / 2;

      // Update the dp table with the maximum average
      dp[i][j] = Math.max(dp[i - 1][j], dp[i][j - 1], avg);

      // Check if the current cell has the maximum average
      if (dp[i][j] === avg) {
        maxAverage = Math.max(maxAverage, avg);
      }
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
