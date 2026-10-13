function magic_square_test(my_matrix: number[][]): boolean {
    const size: number = my_matrix.length;
    const magic_constant: number = size * (size * size + 1) / 2;
    let row_sum: number = 0;
    let col_sum: number = 0;
    let diagonal_sum1: number = 0;
    let diagonal_sum2: number = 0;

    for (let i: number = 0; i < size; i++) {
        for (let j: number = 0; j < size; j++) {
            row_sum += my_matrix[i][j];
            col_sum += my_matrix[j][i];
            if (i === j) {
                diagonal_sum1 += my_matrix[i][j];
            }
            if (i + j === size - 1) {
                diagonal_sum2 += my_matrix[i][j];
            }
        }
        if (row_sum !== magic_constant || col_sum !== magic_constant) {
            return false;
        }
        row_sum = 0;
        col_sum = 0;
    }
    if (diagonal_sum1 !== magic_constant || diagonal_sum2 !== magic_constant) {
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
