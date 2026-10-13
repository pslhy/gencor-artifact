
function max_fill(grid: number[][], capacity: number): number {
  const m = grid.length;
  const n = grid[0].length;
  let counter = 0;
  let filled_grid = new Array(m);
  for (let i = 0; i < m; i++) {
    filled_grid[i] = new Array(n).fill(0);
  }
  for (let i = 0; i < m; i++) {
    for (let j = 0; j < n; j++) {
      if (grid[i][j] > 0) {
        counter++;
        filled_grid[i][j] = 1;
      }
    }
  }
  while (counter > 0) {
    for (let i = 0; i < m; i++) {
      if (filled_grid[i].includes(1)) {
        let k = filled_grid[i].indexOf(1);
        let curr = filled_grid[i][k];
        filled_grid[i][k] = 0;
        while (curr > 0 && k < n) {
          if (filled_grid[i][k + 1] < capacity) {
            filled_grid[i][k] = curr - 1;
            filled_grid[i][k + 1] += 1;
            curr -= 1;
          } else {
            break;
          }
          k++;
        }
      }
    }
    counter = 0;
    for (let i = 0; i < m; i++) {
      for (let j = 0; j < n; j++) {
        if (filled_grid[i][j] > 0) {
          counter++;
        }
      }
    }
  }
  return counter;
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
