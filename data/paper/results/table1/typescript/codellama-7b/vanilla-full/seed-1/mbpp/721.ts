function maxAverageOfPath(cost: number[][]): number {
    let maxAverage = 0;
    let totalCost = 0;
    let numCellsVisited = 0;

    // Iterate over each row
    for (let i = 0; i < cost.length; i++) {
        // Iterate over each column
        for (let j = 0; j < cost[i].length; j++) {
            // If we are at the top-left cell, initialize the total cost and number of cells visited
            if (i === 0 && j === 0) {
                totalCost = cost[i][j];
                numCellsVisited = 1;
            } else if (i === cost.length - 1 && j === cost[i].length - 1) {
                // If we are at the bottom-right cell, calculate the average and compare it to the current max average
                const average = totalCost / numCellsVisited;
                if (average > maxAverage) {
                    maxAverage = average;
                }
                return maxAverage;
            } else {
                // If we are in the middle of the matrix, add the current cell's cost to the total cost and increment the number of cells visited
                totalCost += cost[i][j];
                numCellsVisited++;
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
