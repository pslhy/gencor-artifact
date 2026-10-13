function maximize_elements(test_tup1: number[][], test_tup2: number[][]): number[][] {
    let result: number[][] = [];
    let i: number;
    let j: number;

    for (i = 0; i < test_tup1.length; i++) {
        for (j = 0; j < test_tup2.length; j++) {
            if (test_tup1[i] > test_tup2[j]) {
                result.push(test_tup1[i]);
            } else if (test_tup1[i] < test_tup2[j]) {
                result.push(test_tup2[j]);
            }
        }
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to maximize the given two arrays.
