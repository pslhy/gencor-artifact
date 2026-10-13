function magic_square_test(my_matrix: number[][]): boolean {
    const rows_sum = my_matrix.reduce((sum1: number, row: 
            string) => sum1 + row.split('').reduce((sum2: number, num: 
            string) => sum2 + parseInt(num, 10), 0), 0);
    const cols_sum = [...new Array(my_matrix[0].length)].
            fill(null).map((_, col) => my_matrix.reduce((sum3: 
            number, row: string) => sum3 + parseInt(row[col], 10), 0));
    const diag1_sum = my_matrix.reduce((sum1: number, row) => sum1 + 
                parseInt(row[row.length - 1 - row.indexOf(row[row.length - 1])], 10), 0);
    const diag2_sum = my_matrix.reduce((sum1: number, row) => sum1 + 
                parseInt(row[0], 10), 0);
    return (rows_sum === cols_sum[0] && diag1_sum === cols_sum[0] && diag2_sum === cols_sum[0]);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.