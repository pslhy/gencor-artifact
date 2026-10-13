function magic_square_test(my_matrix: number[][]): boolean {
   if (my_matrix.length !== my_matrix[0].length) {
      return false;
   }
   let diagonal_sum = 0;
   for (let i = 0; i < my_matrix.length; i++) {
      let rowSum = 0;
      let colSum = 0;
      for (let j = 0; j < my_matrix.length; j++) {
         rowSum += my_matrix[i][j];
         colSum += my_matrix[j][i];
      }
      if (rowSum !== colSum) {
         return false;
      }
      diagonal_sum += my_matrix[i][i];
      diagonal_sum -= my_matrix[i][my_matrix.length - i - 1];
   }
   return diagonal_sum === 0;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
