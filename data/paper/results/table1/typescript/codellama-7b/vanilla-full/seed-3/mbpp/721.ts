function maxAverageOfPath(cost: number[][]): number {
  let maxAverage = 0;
  const n = cost.length;
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < n; j++) {
      const path: number[] = [];
      let costSum = 0;
      let numVisitedCells = 0;
      for (let k = i; k < n; k++) {
        for (let l = j; l < n; l++) {
          path.push(cost[k][l]);
          costSum += cost[k][l];
          numVisitedCells++;
        }
      }
      const average = costSum / numVisitedCells;
      if (average > maxAverage) {
        maxAverage = average;
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
