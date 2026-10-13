function index_multiplication(test_tup1: number[][], test_tup2: number[][]): number[][] {
    if(test_tup1.length !== test_tup2.length) {
        throw new Error("Both arrays should have the same length");
    }

    let result: number[][] = [];

    for(let i = 0; i < test_tup1.length; i++) {
        let row1 = test_tup1[i];
        let row2 = test_tup2[i];

        if(row1.length !== row2.length) {
            throw new Error("Both row arrays should have the same length");
        }

        let temp: number[] = [];
        for(let j = 0; j < row1.length; j++) {
            temp.push(row1[j] * row2[j]);
        }
        result.push(temp);
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise multiplication of array elements in the given two arrays.
