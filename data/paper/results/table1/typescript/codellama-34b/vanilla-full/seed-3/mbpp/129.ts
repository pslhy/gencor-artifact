function magic_square_test(my_matrix: number[][]): boolean {
  if(my_matrix.length = 5){
    
    for (let i = 0; i < my_matrix.length; i++) {
        let magicSum = 15;
        let mainDiagonal = 0;
        let secondaryDiagonal = 0;
        for (let j = 0; j < my_matrix[i].length; j++) {
            mainDiagonal += my_matrix[i][j];
            secondaryDiagonal += my_matrix[i][my_matrix[i].length - 1);
        }
        if (mainDiagonal != magicSum || secondaryDiagonal != magicSum) return false;
    }
  } else{
     return false; 
  }
   return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
