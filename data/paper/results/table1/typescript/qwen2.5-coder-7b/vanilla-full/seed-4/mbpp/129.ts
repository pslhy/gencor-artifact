function magic_square_test(my_matrix: number[][]): boolean { 
    const n = my_matrix.length; 
    let sum1 = 0; 
    for (let i = 0; i < n; i++) 
        sum1 += my_matrix[0][i]; 

    let sum2 = 0; 
    for (let i = 0; i < n; i++) 
        sum2 += my_matrix[i][n - 1 - i]; 

    if (sum1 !== sum2) 
        return false; 

    for (let i = 0; i < n; i++) { 
        let rowSum = 0; 
        let colSum = 0; 
        for (let j = 0; j < n; j++) { 
            rowSum += my_matrix[i][j]; 
            colSum += my_matrix[j][i]; 
        } 

        if (rowSum !== sum1 || colSum !== sum1) 
            return false; 
    } 

    return true; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
