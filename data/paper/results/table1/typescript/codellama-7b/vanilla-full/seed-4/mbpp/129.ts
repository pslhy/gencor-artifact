function magic_square_test(my_matrix: number[][]): boolean {
  const side_length = my_matrix.length;
  const half_side_length = side_length / 2;

  // Check if the matrix is square
  if (my_matrix[0].length !== side_length) {
    return false;
  }

  // Check if the diagonals sum to the same number
  let diagonal_sum = 0;
  for (let i = 0; i < side_length; i++) {
    diagonal_sum += my_matrix[i][i];
  }

  let anti_diagonal_sum = 0;
  for (let i = 0; i < side_length; i++) {
    anti_diagonal_sum += my_matrix[i][side_length - i - 1];
  }

  if (diagonal_sum !== anti_diagonal_sum) {
    return false;
  }

  // Check if each row and column sum is the same
  for (let i = 0; i < side_length; i++) {
    let row_sum = 0;
    for (let j = 0; j < side_length; j++) {
      row_sum += my_matrix[i][j];
    }

    let col_sum = 0;
    for (let j = 0; j < side_length; j++) {
      col_sum += my_matrix[j][i];
    }

    if (row_sum !== col_sum) {
      return false;
    }
  }

  // If we passed all of the above checks, the matrix is a magic square
  return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
