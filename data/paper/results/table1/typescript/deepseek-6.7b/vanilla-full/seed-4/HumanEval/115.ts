function max_fill(grid: number[][], capacity: number): number {
    let numRows = grid.length;
    let numCols = grid[0].length;
    let bucketCount = 0;
    let steps = 0;

    for (let i = 0; i < numRows; i++) {
        for (let j = 0; j < numCols; j++) {
            if (grid[i][j] === 1) {
                bucketCount++;
                if (bucketCount === capacity){
                    steps++;
                    bucketCount = 0;
                }
            }
        }
    }

    // one more step if there are some remaining water in the bucket
    if (bucketCount > 0) {
        steps++;
    }

    return steps;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given a rectangular grid of wells. Each row represents a single well,
//     and each 1 in a row represents a single unit of water.
//     Each well has a corresponding bucket that can be used to extract water from it,
//     and all buckets have the same capacity.
//     Your task is to use the buckets to empty the wells.
//     Output the number of times you need to lower the buckets.
//     Example 1:
//     >>> max_fill([[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], 1)
//     6
//     Example 2:
//     >>> max_fill([[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], 2)
//     5
//     Example 3:
//     >>> max_fill([[0, 0, 0], [0, 0, 0]], 5)
//     0
//     Constraints:
//     * all wells have the same length
//     * 1 <= grid.length <= 10^2
//     * 1 <= grid[:,1].length <= 10^2
//     * grid[i][j] -> 0 | 1
//     * 1 <= capacity <= 10
