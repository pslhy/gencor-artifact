function magic_square_test(my_matrix: number[][]): boolean { 
    const n: number = my_matrix.length; 
    if (n <= 0) { 
        return false; 
    } 

    let sum1: number = 0; 
    for (let col: number = 0; col < n; col++) { 
        sum1 += my_matrix[0][col]; 
    } 

    let sum2: number = 0; 
    for (let row: number = 0; row < n; row++) { 
        sum2 += my_matrix[row][n - 1 - row]; 
    } 
    if (sum1 !== sum2) { 
        return false; 
    } 

    for (let row: number = 1; row < n; row++) { 
        let sum: number = 0; 
        for (let col: number = 0; col < n; col++) { 
            sum += my_matrix[row][col]; 
        } 
        if (sum !== sum1) { 
            return false; 
        } 
    } 

    for (let col: number = 1; col < n; col++) { 
        let sum: number = 0; 
        for (let row: number = 0; row < n; row++) { 
            sum += my_matrix[row][col]; 
        } 
        if (sum !== sum1) { 
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
