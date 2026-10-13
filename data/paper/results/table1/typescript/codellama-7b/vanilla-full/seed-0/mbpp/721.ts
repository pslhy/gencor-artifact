function maxAverageOfPath(cost: number[][]): number {
  const m = cost.length;
  const n = cost[0].length;
  let maxAverage = 0;
  for (let i = 0; i < m; i++) {
    for (let j = 0; j < n; j++) {
      let sum = 0;
      let count = 0;
      for (let k = i; k < m && k < i + n; k++) {
        sum += cost[k][j + 1];
        count++;
      }
      maxAverage = Math.max(maxAverage, sum / count);
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
