function maxAverageOfPath(cost: number[][]): number {;
  const N = cost.length;
  const dp = Array.from({ length: N }, (_) => Array(N).fill(-1));

  function helper(i: number, j: number): number {
    if (i === N - 1 && j === N - 1) {
      return cost[i][j];
    }
    if (i >= N || j >= N) {
      return -Infinity;
    }
    if (dp[i][j] !== -1) {
      return dp[i][j];
    }

    const right = helper(i, j + 1);
    const down = helper(i + 1, j);

    dp[i][j] = Math.max(right, down) + cost[i][j];
    return dp[i][j];
  }

  const maxCost = helper(0, 0);
  const maxSteps = N * N;
  const maxAverage = maxCost / maxSteps;
  return maxAverage;
}

// Example usage:
const matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
];
const result = maxAverageOfPath(matrix);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a square matrix of size N*N given as an array of arrays, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path.