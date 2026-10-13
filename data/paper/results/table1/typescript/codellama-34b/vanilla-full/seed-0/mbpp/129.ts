function magic_square_test(my_matrix: number[][]): boolean {
    const row_sums: number[] = [];
    const column_sums: number[] = [];

    // check for correct dimensions
    if (my_matrix.length !== my_matrix[0].length || my_matrix.length < 3) {
        return false;
    }

    // check each row and column
    for (let i = 0; i < my_matrix.length; i++) {
        let row_sum = 0;
        let column_sum = 0;
        for (let j = 0; j < my_matrix[i].length; j++) {
            row_sum += my_matrix[i][j];
            column_sum += my_matrix[j][i];
        }
        row_sums.push(row_sum);
        column_sums.push(column_sum);
    }

    // check that all row and column sums are equal
    let all_equal = true;
    for (let i = 1; i < my_matrix.length; i++) {
        if (row_sums[i] !== row_sums[0] || column_sums[i] !== column_sums[0]) {
            all_equal = false;
            break;
        }
    }

    return all_equal;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
