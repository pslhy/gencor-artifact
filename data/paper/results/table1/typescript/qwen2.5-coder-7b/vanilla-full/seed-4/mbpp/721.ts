function maxAverageOfPath(cost: number[][]): number { 
    const n = cost.length;
    const dp = Array.from({ length: n }, () => Array(n).fill(0));

    dp[0][0] = cost[0][0];

    for (let i = 1; i < n; i++) {
        dp[i][0] = dp[i - 1][0] + cost[i][0];
    }

    for (let i = 1; i < n; i++) {
        dp[0][i] = dp[0][i - 1] + cost[0][i];
    }

    for (let i = 1; i < n; i++) {
        for (let j = 1; j < n; j++) {
            dp[i][j] = Math.max(dp[i - 1][j], dp[i][j - 1]) + cost[i][j];
        }
    }

    return dp[n - 1][n - 1] / n / n;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a square matrix of size N*N given as an array of arrays, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path.
