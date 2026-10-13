function magic_square_test(my_matrix: number[][]): boolean {
    const rows_sum = my_matrix.reduce((sum, row) => sum + row.reduce((rsum, v) => rsum + v, 0), 0);
    const cols_sum = my_matrix[0].map((col, i) => my_matrix.reduce((rsum, row) => rsum + row[i], 0));
    const diag_sum = my_matrix.reduce((r, c) => r + c[c.length - 1 - c.indexOf(c[c.length - 1 - c.indexOf(c[c.length - 1])]), 0);
    const anti_diag_sum = my_matrix.reduce((r, c) => r + c[c.length - 1 - c.indexOf(c[0])], 0);
    return rows_sum === cols_sum[0] && cols_sum.every((cs) => cs === cols_sum[0]) && diag_sum === cols_sum[0] && anti_diag_sum === cols_sum[0];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
