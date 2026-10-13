function magic_square_test(my_matrix: number[][]): boolean {
    const magicConst = my_matrix.reduce((val, _, i, arr) => val + arr[0][i], 0)
    for (let i = 0; i < my_matrix.length; i++) {
        let sum = 0
        for (let j = 0; j < my_matrix[i].length; j++) {
            sum += my_matrix[i][j]
        }
        if (sum !== magicConst) {
            return false
        }
    }
    for (let i = 0; i < my_matrix[0].length; i++) {
        let sum = 0
        for (let j = 0; j < my_matrix.length; j++) {
            sum += my_matrix[j][i]
        }
        if (sum !== magicConst) {
            return false
        }
    }
    let sum = 0
    for (let i = 0; i < my_matrix.length; i++) {
        sum += my_matrix[i][i]
    }
    if (sum !== magicConst) {
        return false
    }
    sum = 0
    for (let i = 0; i < my_matrix.length; i++) {
        sum += my_matrix[i][my_matrix.length - i - 1]
    }
    if (sum !== magicConst) {
        return false
    }
    return true
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
