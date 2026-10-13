function get_row(lst: number[][], x: number): [number, number][] {
  let result: [number, number][] = [];

  // Iterate over each row
  for (let i = 0; i < lst.length; i++) {
    const row = lst[i];

    // Iterate over each cell in the row
    for (let j = 0; j < row.length; j++) {
      // Check if the current cell contains the target value
      if (row[j] === x) {
        // Add the coordinate of the cell to the result
        result.push([i, j]);
      }
    }
  }

  // Sort the result by rows in ascending order
  result = result.sort(([a, b], [c, d]) => a - c || b - d);

  // Sort the result by columns in descending order
  result = result.map(([x1, y1]) => [x1, y1].reverse()).sort(([x, x]) =="ascending ? 1 : -1; return x - y; });  return result;    }   }


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given a 2 dimensional data, as a nested arrays,
//     which is similar to matrix, however, unlike matrices,
//     each row may contain a different number of columns.
//     Given lst, and integer x, find integers x in the array,
//     and return array of arrays, [(x1, y1), (x2, y2) ...] such that
//     each array is a coordinate - (row, columns), starting with 0.
//     Sort coordinates initially by rows in ascending order.
//     Also, sort coordinates of the row by columns in descending order.
//     Examples:
//     >>> get_row([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], 1)
//     [[0, 0], [1, 4], [1, 0], [2, 5], [2, 0]]
//     >>> get_row([], 1)
//     []
//     >>> get_row([[], [1], [1, 2, 3]], 3)
//     [[2, 2]]