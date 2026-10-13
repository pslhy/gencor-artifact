function magic_square_test(my_matrix: number[][]): boolean {
    const sum = my_matrix[0].reduce((a, b) => a + b, 0)
    const n = my_matrix[0].length
    let colSum: number, rowSum: number

    for (let i = 0; i < n; i++) {
        rowSum = 0
        colSum = 0
        for (let j = 0; j < n; j++) {
            rowSum += my_matrix[i][j]
            colSum += my_matrix[j][i]
        }
        if (rowSum != sum) return false
        if (colSum != sum) return false
    }

    rowSum = 0
    for (let i = 0; i < n; i++) {
        rowSum += my_matrix[i][i]
    }
    if (rowSum != sum) return false

    rowSum = 0
    for (let i = 0; i < n; i++) {
        rowSum += my_matrix[i][n-i-1]
    }
    if (rowSum != sum) return false

    return true
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
