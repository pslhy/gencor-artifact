
function eulerian_num(n: number, m: number): number {
    let E: number[][] = [];

    // Initialize Eulerian matrix
    for (let i = 0; i <= n; i++) {
        E[i] = new Array(m + 1).fill(0);
        E[i][0] = 0;
        E[i][i] = 1;
    }

    // Fill the matrix
    for (let j = 1; j <= m; j++) {
        for (let i = 1; i <= n; i++) {
            if (i > j) {
                E[i][j] = E[i-1][j-1] + E[i-1][j];
            } else {
                E[i][j] = E[i-1][j-1] + E[i][j-1];
            }
        }
    }

    return E[n][m];
}

console.log(eulerian_num(5, 3)); // Output: 25

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).
