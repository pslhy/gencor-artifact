function index_multiplication(test_tup1: number[][], test_tup2: number[][]): number[][] { 
    let res: number[][] = [];
    for (let idx = 0; idx < Math.min(test_tup1.length, test_tup2.length); idx++) {
        let sub_res: number[] = [];
        for (let i = 0; i < Math.min(test_tup1[idx].length, test_tup2[idx].length); i++) {
            sub_res.push(test_tup1[idx][i] * test_tup2[idx][i]);
        }
        res.push(sub_res);
    }
    return res;
}

// Test example
let res = index_multiplication([[2, 4, 8], [16, 32]], [[5, 7], [3, 2], [1, 9]]);
console.log('Resultant Matrix after multiplication: ' + JSON.stringify(res));

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise multiplication of array elements in the given two arrays.
