function minPath(grid: number[][], k: number): number[] {
  const N = grid.length;
  const positions: [number, number][] = [];
  const graph: [number, number][][] = [];
  for (let i = 0; i < N; i++) {
    for (let j = 0; j < N; j++) {
      positions.push([i, j]);
      graph.push([]);
    }
  }
  positions.sort((a, b) => grid[a[0]][a[1]] - grid[b[0]][b[1]]);

  for (let i = 0; i < N; i++) {
    for (let j = 0; j < N; j++) {
      const [x1, y1] = [i, j];
      for (const [x2, y2] of [[i - 1, j], [i + 1, j], [i, j - 1], [i, j + 1]]) {
        if (x2 >= 0 && x2 < N && y2 >= 0 && y2 < N) {
          const idx1 = x1 * N + y1;
          const idx2 = x2 * N + y2;
          graph[idx1].push([idx2, grid[x2][y2]]);
        }
      }
      graph[i * N + j].sort((a, b) => a[1] - b[1]);
    }
  }

  const shortestPath = (start: number, length: number): number[] => {
    const dist = new Array(N * N).fill(Infinity);
    const from = new Array(N * N).fill(-1);
    const queue: [number, number][] = [[start, 0]];
    while (queue.length) {
      const [idx, cost] = queue.shift() as [number, number];
      if (cost >= dist[idx]) continue;
      dist[idx] = cost;
      from[idx] = idx;
      for (const [next, nextCost] of graph[idx]) {
        if (dist[idx] + nextCost < dist[next]) {
          from[next] = idx;
          queue.push([next, dist[idx] + nextCost]);
          queue.sort((a, b) => b[1] - a[1]);
        }
      }
    }
    let cur = start;
    const path: number[] = [];
    for (let i = 0; i < length; i++) {
      path.unshift(grid[positions[cur][0]][positions[cur][1]]);
      cur = from[cur];
    }
    return path;
  };

  let minPath = shortestPath(0, k);
  for (let i = 0; i < N * N; i++) {
    const path = shortestPath(i, k);
    if (path[0] < minPath[0]) {
      minPath = path;
    }
  }
  return minPath;
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
