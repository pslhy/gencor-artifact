function add_nested_tuples(test_tup1: number[][], test_tup2: number[][]): number[][] {  
    let res: number[][] = [];  
    for (let i = 0; i < test_tup1.length; i++) {  
        let inner_res: number[] = [];  
        for (let j = 0; j < test_tup1[i].length; j++) {  
            inner_res.push(test_tup1[i][j] + test_tup2[i][j]);  
        }  
        res.push(inner_res);  
    }   
    return res;  
}    
let test_tup1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];  
let test_tup2 = [[9, 8, 7], [6, 5, 4], [3, 2, 1]];  
let res = add_nested_tuples(test_tup1, test_tup2);  
console.log(res);  


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise addition of array elements in the given two nested arrays.
