function magic_square_test(my_matrix: number[][]): boolean { 
  let size: number = my_matrix.length;
  let sum1: number = 0;
  let sum2: number = 0;

  // Calculate the sum of the first row to establish the expected sum for a magic square
  for(let i: number = 0; i < size; i++) {
    sum1 += my_matrix[0][i];
  }

  // Check the sums of each row
  for(let i: number = 0; i < size; i++) {
    let sum3: number = 0;
    for(let j: number = 0; j < size; j++) {
      sum3 = sum3 + my_matrix[i][j];
    }
    if(sum1 !== sum3) return false;
  }

  // Check the sums of each column
  for(let i: number = 0; i < size; i++) {
    sum2 = 0;
    for(let j: number = 0; j < size; j++) {
      sum2 = sum2 + my_matrix[j][i];
    }
    if(sum1 !== sum2) return false;
  }

  // Check the sum of the main diagonal
  let sum4: number = 0;
  for(let i: number = 0; i < size; i++) {
    sum4 = sum4 + my_matrix[i][i];
  }
  if(sum1 !== sum4) return false;

  // Check the sum of the secondary diagonal
  sum4 = 0;
  for(let i: number = 0; i < size; i++) {
    sum4 = sum4 + my_matrix[i][size - 1 - i];
  }
  if(sum1 !== sum4) return false;

  return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
