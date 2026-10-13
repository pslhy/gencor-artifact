function magic_square_test(my_matrix: number[][]): boolean {
    const n = my_matrix.length;
    const m = my_matrix[0].length;

    // Check if the matrix is a square matrix
    if (n !== m) {
        return false;
    }

    // Check if the matrix has a magic number
    const magic_number = (n * (n * n + 1)) / 2;
    if (my_matrix.some(row => row.reduce((a, b) => a + b, 0) !== magic_number)) {
        return false;
    }

    // Check if all the rows, columns and diagonals sum to the magic number
    for (let i = 0; i < n; i++) {
        let row_sum = 0;
        let col_sum = 0;
        for (let j = 0; j < n; j++) {
            row_sum += my_matrix[i][j];
            col_sum += my_matrix[j][i];
        }
        if (row_sum !== magic_number || col_sum !== magic_number) {
            return false;
        }
    }

    // Check if the diagonals sum to the magic number
    let diag1_sum = 0;
    let diag2_sum = 0;
    for (let i = 0; i < n; i++) {
        diag1_sum += my_matrix[i][i];
        diag2_sum += my_matrix[i][n - 1 - i];
    }
    if (diag1_sum !== magic_number || diag2_sum !== magic_number) {
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
