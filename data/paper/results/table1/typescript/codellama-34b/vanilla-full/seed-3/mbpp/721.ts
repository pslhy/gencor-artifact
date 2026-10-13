function maxAverageOfPath(cost: number[][]): number {
  if(cost.length === 1){
    return cost[0][0];
  } else {
    const n: number = cost.length;
    let dp: number[][] = new Array(n);
    for(let i: number = 0; i < n; i++){
      dp[i] = new Array(n).fill(0);
    }
    dp[0][1] = cost[0][1];
    dp[1][0] = cost[1][0];
    for(let i: number = 2; i < n; i++){
      for(let j: number = 2; j < n; j++){
        dp[i][j] = Math.min(dp[i - 1][j], dp[i][j-1]) + cost[j][i];
      }
    }
    return Math.min(dp[n - 1][n - 1], dp[n - 2][n - 1]);
  }
}

const costMat: number[][] = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
const maxAvg: number = maxAverageOfPath(costMat);
console.log(maxAvg);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a square matrix of size N*N given as an array of arrays, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path.
