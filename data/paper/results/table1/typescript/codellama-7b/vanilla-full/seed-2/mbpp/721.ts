function maxAverageOfPath(cost: number[][]): number {
  let n = cost.length;
  let dp: number[][] = [];

  for (let i = 0; i < n; i++) {
    dp[i] = new Array(n).fill(0);
  }

  for (let i = 0; i < n; i++) {
    for (let j = 0; j < n; j++) {
      dp[i][j] = cost[i][j];

      if (i > 0 && j > 0) {
        dp[i][j] = Math.max(dp[i - 1][j], dp[i][j - 1]);
      }
    }
  }

  let maxAverage = 0;
  let numCellsVisited = 0;

  for (let i = 0; i < n - 1; i++) {
    for (let j = 0; j < n - 1; j++) {
      let average = dp[i][j] / (i + j + 2);
      if (average > maxAverage) {
        maxAverage = average;
        numCellsVisited = i + j + 2;
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
