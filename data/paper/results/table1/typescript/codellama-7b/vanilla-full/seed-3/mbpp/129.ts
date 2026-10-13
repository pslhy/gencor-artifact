function magic_square_test(my_matrix: number[][]): boolean {
  if(my_matrix.length === 5){
    const sum_of_columns = my_matrix.map(row => row.reduce((a, b) => a + b, 0));
    const sum_of_rows = my_matrix.reduce((a, b) => a.map((val, i) => val + b[i]), [])
    if(sum_of_rows.every((sum, i) => sum === sum_of_columns[i]) && sum_of_rows.every((sum, i) => sum === sum_of_rows[i])){
      return true;
    }
    return false;
  }
  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
