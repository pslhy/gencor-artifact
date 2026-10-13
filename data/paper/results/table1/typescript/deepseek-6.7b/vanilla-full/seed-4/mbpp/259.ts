function maximize_elements(test_tup1: number[][], test_tup2: number[][]): number[][] {
    return test_tup1.map((subArray, i) => {
        return subArray.map((item, j) => {
            return Math.max(test_tup1[i][j], test_tup2[i][j]);
        });
    });
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to maximize the given two arrays.
