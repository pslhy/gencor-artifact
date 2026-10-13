function minPath(grid: number[][], k: number): number[] {
  const visited = Array(grid.length).fill(Array(grid[0].length).fill(false));
  const order = Array(k).fill(0);
  const path = Array(k).fill(0);

  dfs(0, 0, 0);

  return path;

  function dfs(row: number, col: number, count: number): void {
    if (visited[row][col]) return;
    visited[row][col] = true;

    path[count] = grid[row][col];

    if (count === k - 1) return;

    if (row > 0) dfs(row - 1, col, count + 1);
    if (row < grid.length - 1) dfs(row + 1, col, count + 1);
    if (col > 0) dfs(row, col - 1, count + 1);
    if (col < grid[0].length - 1) dfs(row, col + 1, count + 1);

    visited[row][col] = false;
  }
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
