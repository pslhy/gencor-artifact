function index_multiplication(test_tup1: number[][], test_tup2: number[][]): number[][] {
    let result: number[][] = [[], []];
    for(let i = 0; i < test_tup1.length; i++) {
        for(let j = 0; j < test_tup1[i].length; j++) {
            result[i][j] = test_tup1[i][j] * test_tup2[i][j];
        }
    }
    return result;
}

// Test the function
console.log(index_multiplication([[1, 2, 3], [4, 5, 6]], [[7, 8, 9], [10, 11, 12]]));  // Output: [[7, 16, 27], [40, 55, 72]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise multiplication of array elements in the given two arrays.
