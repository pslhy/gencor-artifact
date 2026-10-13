function maxAverageOfPath(cost: number[][]): number {    
    const n = cost.length;
    const dp: number[][] = Array.from({ length: n }, (_) => Array(n).fill(-1));

    function calculateMaxAverage(x: number, y: number): number {
        if (x === n - 1 && y === n - 1) {
            return cost[x][y];
        }
        if (dp[x][y] !== -1) {
            return dp[x][y];
        }
        const right = x < n - 1 ? calculateMaxAverage(x + 1, y) : -Infinity;
        const down = y < n - 1 ? calculateMaxAverage(x, y + 1) : -Infinity;
        dp[x][y] = Math.max(right, down) + cost[x][y];
        return dp[x][y];
    }

    const totalPathCost = calculateMaxAverage(0, 0);
    return totalPathCost / (2 * n - 1);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a square matrix of size N*N given as an array of arrays, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path.