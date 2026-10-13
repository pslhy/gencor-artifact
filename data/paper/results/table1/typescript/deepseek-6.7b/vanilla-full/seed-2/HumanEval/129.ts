function minPath(grid: number[][], k: number): number[] {
    const n = grid.length;
    const dp: number[][] = new Array(n * n + 1).fill(0).map(() => new Array(n * n + 1).fill(Infinity));
    const path: number[][] = new Array(n * n + 1).fill(0).map(() => new Array(n * n + 1).fill(0));

    for (let i = 1; i <= n * n; i++) {
        dp[i][0] = 0;
    }

    for (let len = 1; len <= n * n; len++) {
        for (let j = 1; j <= len; j++) {
            for (let i = 1; i <= len; i++) {
                if (j - 1 < i - 1) continue;

                const prevLen = len - 1;
                const a = dp[prevLen][i - 1] + grid[Math.ceil(i / n)][(i - 1) % n];
                const b = j === i ? dp[prevLen][j] + grid[Math.ceil(i / n)][i % n] : dp[prevLen][j];
                const c = dp[prevLen][j - 1] + grid[Math.ceil(j / n)][(j - 1) % n];
                
                if (a <= b && a <= c) {
                    dp[len][j] = a;
                    path[len][j] = i;
                } else if (b <= c) {
                    dp[len][j] = b;
                    path[len][j] = path[prevLen][i];
                } else {
                    dp[len][j] = c;
                    path[len][j] = j;
                }
            }
        }
    }

    const result: number[] = [];
    let len = n * n;
    let p = path[len][k];
    while (len > 0) {
        result.unshift(grid[Math.ceil(p / n)][(p - 1) % n]);

        len--;
        p = path[len][k];
        k--;
    }

    return result;
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
