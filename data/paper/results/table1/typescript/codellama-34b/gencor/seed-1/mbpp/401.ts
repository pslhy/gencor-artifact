
function add_nested_tuples(test_tup1: number[][], test_tup2: number[][]): number[][] {
    let result: number[][] = [];
    for(const [index, values] of test_tup1.entries()) {
        if(test_tup2[index]){
         result[index] = values.map((value, i) => value + test_tup2[index][i]);
        }
    }

    return result;
}

const test_tup1 = [[1,2,3],[4,5,6]];
const test_tup2 = [[7,8,9], [10, 11, 12]]

console.log(add_nested_tuples(test_tup1, test_tup2)) // output: [[8, 10, 12], [14, 16, 18]]

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise addition of array elements in the given two nested arrays.
