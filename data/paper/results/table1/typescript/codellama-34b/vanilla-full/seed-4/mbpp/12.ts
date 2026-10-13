function sort_matrix(M: number[][]): number[][] {
   const N: number = M.length;
   const C: number[] = [...Array(N + 1)].map((_, i) => i);
   C.sort((i, j) => Math.min(...M[i].map((v, k) => v - M[j][k])));
   return M.map((_, i) => C.map((k, j) => M[k][j]));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort a given matrix in ascending order according to the sum of its rows.
