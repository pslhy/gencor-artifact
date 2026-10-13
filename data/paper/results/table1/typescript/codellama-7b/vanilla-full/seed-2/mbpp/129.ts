function magic_square_test(my_matrix: number[][]): boolean {
    let n = my_matrix.length;
    let s = my_matrix.reduce((acc, row) => acc + row.reduce((acc, x) => acc + x, 0), 0);

    for (let i = 0; i < n; i++) {
        if (my_matrix[i][i] !== s / n) {
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
