function sort_matrix(M: number[][]): number[][] {
    let N = M.length;
    let P = [];
    for (let i = 0; i < N; i++) {
        P.push([M[i][0], i]);
    }
    P.sort((a, b) => a[0] - b[0]);
    let sorted = [];
    for (let i = 0; i < N; i++) {
        let row = M[P[i][1]];
        sorted.push(row);
    }
    return sorted;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort a given matrix in ascending order according to the sum of its rows.
