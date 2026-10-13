function magic_square_test(my_matrix: number[][]): boolean {    
    let n = my_matrix.length;
    let sum = 0;

    // Calculate the sum of the first row to set as reference
    for (let i = 0; i < n; i++) sum += my_matrix[0][i];

    // Check sums of all rows
    for (let i = 1; i < n; i++) {
        let row_sum = 0;
        for (let j = 0; j < n; j++) row_sum += my_matrix[i][j];
        if (row_sum !== sum) return false;
    }

    // Check sums of all columns
    for (let i = 0; i < n; i++) {
        let col_sum = 0;
        for (let j = 0; j < n; j++) col_sum += my_matrix[j][i];
        if (col_sum !== sum) return false;
    }

    // Check sum of the main diagonal
    let diag_sum = 0;
    for (let i = 0; i < n; i++) diag_sum += my_matrix[i][i];
    if (diag_sum !== sum) return false;

    // Check sum of the secondary diagonal
    let sec_diag_sum = 0;
    for (let i = 0; i < n; i++) sec_diag_sum += my_matrix[i][n - 1 - i];
    if (sec_diag_sum !== sum) return false;

    return true; // All checks passed
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
