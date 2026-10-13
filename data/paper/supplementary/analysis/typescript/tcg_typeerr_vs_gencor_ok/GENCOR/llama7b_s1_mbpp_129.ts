
function magic_square_test(my_matrix: number[][]): boolean {
    const rows_sum = my_matrix.reduce((sum1: number, row: number[]) => sum1 + row.reduce((sum: number, element: number) => sum + element, 0), 0);
    const cols_sum = my_matrix.reduce((outer_sum: number, row: number[]) => outer_sum + row.reduce((col: number, element: number) => col * element, 1), 1);
    return rows_sum === cols_sum && my_matrix.length === my_matrix[0].length;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
