function sort_matrix(M: number[][]): number[][] {
    const sum = (array: number[]) => array.reduce((a, b) => a + b, 0);

    M.sort((rowA, rowB) => sum(rowA) - sum(rowB));
   
    return M;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort a given matrix in ascending order according to the sum of its rows.
