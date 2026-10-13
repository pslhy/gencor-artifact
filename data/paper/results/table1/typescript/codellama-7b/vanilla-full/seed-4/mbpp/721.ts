function maxAverageOfPath(cost: number[][]): number {
  const n: number = cost.length;
  let maxAverage: number = 0;
  for (let i: number = 0; i < n; i++) {
    for (let j: number = 0; j < n; j++) {
      let sum: number = 0;
      let count: number = 0;
      let x: number = i;
      let y: number = j;
      while (x < n && y < n) {
        sum += cost[x][y];
        count++;
        x++;
        y++;
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
