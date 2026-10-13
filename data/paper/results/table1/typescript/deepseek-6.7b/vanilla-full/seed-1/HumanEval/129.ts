function minPath(grid: number[][], k: number): number[] {
    const N = grid.length;
    const graph: {[key: number]: number[]} = {};
    for(let i = 0; i < N; i++) {
        for(let j = 0; j < N; j++) {
            graph[grid[i][j]] = [];
            if(i > 0) graph[grid[i][j]].push(grid[i-1][j]);
            if(j > 0) graph[grid[i][j]].push(grid[i][j-1]);
            if(i < N-1) graph[grid[i][j]].push(grid[i+1][j]);
            if(j < N-1) graph[grid[i][j]].push(grid[i][j+1]);
        }
    }

    const results: number[][] = [];
    for(let start in graph) {
        results.push([parseInt(start)]);
        const backtrack = (curr: number, path: number[]) => {
            if(path.length === k) {
                results.push([...path]);
                return;
            }

            for(let i = 0; i < graph[curr].length; i++) {
                path.push(graph[curr][i]);
                backtrack(graph[curr][i], path);
                path.pop();
            }
        }

        backtrack(parseInt(start), results[results.length-1]);
        results.pop();
    }

    results.sort();
    return results[0];
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
