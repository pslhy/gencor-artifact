function magic_square_test(my_matrix: number[][]): boolean {
    let n = my_matrix.length;
    let sum_row: number[] = [];
    let sum_col: number[] = [];
    let sum_diag: number[] = [];

    // check if all rows, columns, and diagonals have the same sum
    for (let i = 0; i < n; i++) {
        let row_sum = 0;
        let col_sum = 0;
        let dig_sum = 0;

        for (let j = 0; j < n; j++) {
            row_sum += my_matrix[i][j];
            col_sum += my_matrix[j][i];
            if (i == j) {
                dig_sum += my_matrix[i][j];
            }
        }

        sum_row.push(row_sum);
        sum_col.push(col_sum);
        sum_diag.push(dig_sum);
    }

    // check if all sums are equal
    let sum = sum_row[0];
    for (let i = 1; i < n; i++) {
        if (sum_row[i] != sum || sum_col[i] != sum || sum_diag[i] != sum) {
            return false;
        }
    }

    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
