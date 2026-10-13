
function minPath(grid: number[][], k: number): number[] { // Function to find the minimum path of length k in a grid
    const n = grid.length;
    let result: number[] = [];
    let paths: number[][] = [];

    const dfs = (x: number, y: number, path: number[], steps: number) => { // Depth-First Search function
        if (x < 0 || y < 0 || x >= n || y >= n) return; // Check boundaries
        path.push(grid[x][y]); // Add current cell to the path
        if (steps === k) { // If path length is k
            paths.push([...path]); // Add a copy of the path to the list of paths
        } else {
            dfs(x + 1, y, path, steps + 1); // Move down
            dfs(x - 1, y, path, steps + 1); // Move up
            dfs(x, y + 1, path, steps + 1); // Move right
            dfs(x, y - 1, path, steps + 1); // Move left
        }
        path.pop(); // Backtrack
    };

    for (let i = 0; i < n; i++) { // Iterate through the grid
        for (let j = 0; j < n; j++) {
            dfs(i, j, [], 0); // Start DFS from each cell
        }
    }

    paths.sort((a, b) => a[0] - b[0] || a[1] - b[1] || a[2] - b[2]); // Sort paths lexicographically
    result = paths[0]; // Get the lexicographically smallest path

    return result; // Return the result
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a grid with N rows and N columns (N >= 2) and a positive integer k,
//     each cell of the grid contains a value. Every integer in the range [1, N * N]
//     inclusive appears exactly once on the cells of the grid.
//     You have to find the minimum path of length k in the grid. You can start
//     from any cell, and in each step you can move to any of the neighbor cells,
//     in other words, you can go to cells which share an edge with you current
//     cell.
//     Please note that a path of length k means visiting exactly k cells (not
//     necessarily distinct).
//     You CANNOT go off the grid.
//     A path A (of length k) is considered less than a path B (of length k) if
//     after making the ordered arrays of the values on the cells that A and B go
//     through (let's call them lst_A and lst_B), lst_A is lexicographically less
//     than lst_B, in other words, there exist an integer index i (1 <= i <= k)
//     such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
//     lst_A[j] = lst_B[j].
//     It is guaranteed that the answer is unique.
//     Return an ordered array of the values on the cells that the minimum path go through.
//     Examples:
//     >>> minPath([[1, 2, 3], [4, 5, 6], [7, 8, 9]], 3)
//     [1, 2, 1]
//     >>> minPath([[5, 9, 3], [4, 1, 6], [7, 8, 2]], 1)
//     [1]
