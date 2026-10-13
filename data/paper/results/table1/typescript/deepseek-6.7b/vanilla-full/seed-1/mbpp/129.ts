function magic_square_test(my_matrix: number[][]): boolean {
    const size: number = my_matrix.length;
    const magicNum: number = (size * (size * size + 1)) / 2;
    
    // check row
    for (let i = 0; i < size; i++) {
        let sum = 0;
        for (let j = 0; j < size; j++)
            sum += my_matrix[i][j];
        if(sum != magicNum)
            return false;
    }
    // check column
    for (let i = 0; i < size; i++) {
        let sum = 0;
        for (let j = 0; j < size; j++)
            sum += my_matrix[j][i];
        if(sum != magicNum)
            return false;
    }
    // check diagonal
    let sum_d1 = 0, sum_d2 = 0;
    for (let i = 0; i < size; i++) {
        sum_d1 += my_matrix[i][i];
        sum_d2 += my_matrix[i][size - i - 1];
    }
    if(sum_d1 != magicNum || sum_d2 != magicNum)
        return false;
        
    // If passed all check
    return true;        
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
