function magic_square_test(my_matrix: number[][]): boolean {  
    let sum1: number = 0, sum2: number = 0;  
    let sum3: number = 0, sum4: number = 0;  
    let temp1: number = 0, temp2: number = 0;  
    let magi: number = 0;  
    let result: boolean = true;  
    let i: number = 0, j: number = 0;  

    magi = my_matrix[0].length;  

    sum1 = 0;  
    for (i = 0; i < magi; i++) {  
        sum1 += my_matrix[0][i];  
    }  

    for (let i = 0; i < magi; i++) {  
        sum2 = 0;  
        for (let j = 0; j < magi; j++) {  
            sum2 += my_matrix[i][j];  
            sum3 += my_matrix[j][i];  
        }  
        if (sum2 != sum1 || sum3 != sum1) {  
            result = false;  
            break;  
        }  
        sum3 = 0;  
    }  

    temp1 = 0;  
    for (let i = 0; i < magi; i++) {  
        temp1 += my_matrix[i][i];  
    }  

    temp2 = 0;  
    for (let i = 0; i < magi; i++) {  
        temp2 += my_matrix[i][magi - 1 - i];  
    }  

    if (temp1 != sum1 || temp2 != sum1) {  
        result = false;  
    }  

    return result;  
}  

// Example usage:
// const matrix: number[][] = [
//     [2, 7, 6],
//     [9, 5, 1],
//     [4, 3, 8]
// ];
// console.log(magic_square_test(matrix));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate whether the matrix is a magic square.
