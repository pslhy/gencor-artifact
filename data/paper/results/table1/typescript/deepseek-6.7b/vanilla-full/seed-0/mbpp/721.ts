function maxAverageOfPath(cost: number[][]): number {
    const n = cost.length;
    const dp = new Array(n).fill(0).map(() => new Array(n).fill(-1));
    dp[n-1][n-1] = cost[n-1][n-1];

    const dir = [[0, 1], [1, 0]];
    for (let i = n - 1; i >= 0; --i) {
        for (let j = n - 1; j >= 0; --j) {
            if (i == n - 1 && j == n - 1) continue;
            for (const d of dir) {
                const ni = i + d[0], nj = j + d[1];
                if (ni < n && nj < n && (dp[ni][nj] === -1 || dp[ni][nj] < cost[i][j] + dp[i][j])) {
                    dp[ni][nj] = cost[i][j] + dp[i][j];
                }
            }
        }
    }

    let maxAvg = 0;
    for (let i = 0; i < n; ++i) {
        for (let j = 0; j < n; ++j) {
            if (dp[i][j] === -1) continue;
            const total = dp[i][j];
            const cellsVisited = (n - 1 - i) + (n - 1 - j) + 1;
            const avg = total / cellsVisited;
            maxAvg = Math.max(maxAvg, avg);
        }
    }
    
    return maxAvg;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a square matrix of size N*N given as an array of arrays, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path.
