function sort_matrix(M: number[][]): number[][] {
  // Sort the rows of the matrix with the sum of the rows as the key
  const sortedRows = M.map((row) => row.reduce((a, b) => a + b, 0)).sort((a, b) => a - b);

  // Sort the rows of the matrix according to the sorted rows
  return M.sort((a, b) => sortedRows.indexOf(a.reduce((a, b) => a + b, 0)) - sortedRows.indexOf(b.reduce((a, b) => a + b, 0)));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort a given matrix in ascending order according to the sum of its rows.
