function magic_square_test(my_matrix: number[][]): boolean {
    let row_sum = 0;
    let col_sum = 0;
    let diag_sum1 = 0;
    let diag_sum2 = 0;
    const len = my_matrix.length;

    // checking the magic constant
    for (let i = 0; i < len; i++) {
        row_sum += my_matrix[0][i];
        col_sum += my_matrix[i][0];
        diag_sum1 += my_matrix[i][i];
        diag_sum2 += my_matrix[i][len - i - 1];
    }
    if (row_sum !== col_sum || row_sum !== diag_sum1 || row_sum !== diag_sum2) return false;

    // checking row sums
    for (let i = 1; i < len; i++) {
        row_sum = 0;
        for (let j = 0; j < len; j++) {
            row_sum += my_matrix[i][j];
        }
        if (row_sum !== col_sum) return false;
    }

    // checking col sums
    for (let i = 1; i < len; i++) {
        col_sum = 0;
        for (let j = 0; j < len; j++) {
            col_sum += my_matrix[j][i];
        }
        if (col_sum !== row_sum) return false;
    }

    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
