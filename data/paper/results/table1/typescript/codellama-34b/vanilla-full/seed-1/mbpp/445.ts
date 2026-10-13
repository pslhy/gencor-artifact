function index_multiplication(test_tup1: number[][], test_tup2: number[][]): number[][] {
    let result: number[][] = [];
    for(const [i, j] of test_tup1) {
        for(const [k, l] of test_tup2) {
            result.push([Math.min(i, k), Math.min(j, l)]);
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise multiplication of array elements in the given two arrays.
