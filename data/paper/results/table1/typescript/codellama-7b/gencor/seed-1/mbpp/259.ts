
function maximize_elements(test_tup1: number[][], test_tup2: number[][]): number[][] {
    let result: number[][] = [[0, 0, 0]];
    for (let i = 0; i < test_tup1.length; i++) {
        for (let j = 0; j < test_tup2.length; j++) {
            let temp1: number[] = [test_tup1[i][0], test_tup1[i][1], test_tup1[i][2]];
            let temp2: number[] = [test_tup2[j][0], test_tup2[j][1], test_tup2[j][2]];
            if (temp1[0] < temp2[0]) {
                temp1[0] = temp2[0];
            }
            if (temp1[1] < temp2[1]) {
                temp1[1] = temp2[1];
            }
            if (temp1[2] < temp2[2]) {
                temp1[2] = temp2[2];
            }
            result[0] = temp1;
        }
    }
    return result;
}
let test_tup1: number[][] = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
let test_tup2: number[][] = [[10, 11, 12], [13, 14, 15], [16, 17, 18]];
console.log(maximize_elements(test_tup1, test_tup2));

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to maximize the given two arrays.
