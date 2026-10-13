function sort_matrix(M: number[][]): number[][] {
    return M.sort((a, b) => {
        const sumA = a.reduce((sum, val) => sum + val, 0);
        const sumB = b.reduce((sum, val) => sum + val, 0);
        return sumA - sumB;
    });
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort a given matrix in ascending order according to the sum of its rows.
