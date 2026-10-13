
function maxAverageOfPath(cost: number[][]): number {
    const n = cost.length;
    const maxSum = new Array(n).fill(0).map(a => new Array(n).fill(0));

    // Initialize the first cell
    maxSum[0][0] = cost[0][0];

    // Fill the first row
    for (let j = 1; j < n; j++) {
        maxSum[0][j] = maxSum[0][j - 1] + cost[0][j];
    }

    // Fill the first column
    for (let i = 1; i < n; i++) {
        maxSum[i][0] = maxSum[i - 1][0] + cost[i][0];
    }

    // Fill the rest of the matrix
    for (let i = 1; i < n; i++) {
        for (let j = 1; j < n; j++) {
            maxSum[i][j] = Math.max(maxSum[i - 1][j], maxSum[i][j - 1]) + cost[i][j];
        }
    }

    // Calculate the maximum average path
    const totalCells = n * n;
    const maxAverage = maxSum[n - 1][n - 1] / totalCells;

    return maxAverage;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a square matrix of size N*N given as an array of arrays, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path.
