function sort_matrix(M: number[][]): number[][] {
    const rows = M.length;
    const cols = M[0].length;
    const sorted_indices = [];

    for (let i = 0; i < rows; i++) {
        for (let j = 0; j < cols; j++) {
            sorted_indices.push(M[i][j]);
        }
    }

    sorted_indices.sort((a, b) => a - b);

    const result: number[][] = [];

    for (let i = 0; i < rows; i++) {
        result.push(sorted_indices.slice(i * cols, (i + 1) * cols));
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort a given matrix in ascending order according to the sum of its rows.
