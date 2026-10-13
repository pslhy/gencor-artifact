function magic_square_test(my_matrix: number[][]): boolean {
  const row_sums: number[] = my_matrix.map(row => row.reduce((a, b) => a + b, 0));
  const col_sums: number[] = my_matrix[0].map((_, i) => my_matrix.map(row => row[i]).reduce((a, b) => a + b, 0));
  const diag_sums: number[] = [my_matrix[0][0] + my_matrix[1][1] + my_matrix[2][2], my_matrix[0][2] + my_matrix[1][1] + my_matrix[2][0]];
  return row_sums.every(sum => sum === row_sums[0]) && col_sums.every(sum => sum === col_sums[0]) && diag_sums.every(sum => sum === diag_sums[0]);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
