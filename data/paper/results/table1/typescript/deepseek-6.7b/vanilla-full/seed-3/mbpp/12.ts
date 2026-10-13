function sort_matrix(M: number[][]): number[][] {
    // Compute the sums of each row
    const sums: number[] = M.map((i) => i.reduce((a, b) => a + b, 0));

    // Use a sort function that takes into account the sums array
    M.sort((a, b) => sums[M.indexOf(a)] - sums[M.indexOf(b)]);

    return M;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort a given matrix in ascending order according to the sum of its rows.
