function eulerian_num(n: number, m: number): number {
    let E: number[][] = [];

    // Initialize Eulerian matrix
    for (let i = 0; i <= n; i++) {
        E[i] = [];
        for (let j = 0; j <= m; j++) {
            E[i][j] = 0;
        }
    }

    // Calculate Eulerian matrix
    for (let j = 0; j <= m; j++) {
        E[0][j] = 0;
        E[1][j] = j;
    }
    for (let i = 2; i <= n; i++) {
        E[i][0] = 1;
        for (let j = 1; j <= m; j++) {
            E[i][j] = (j - 1) * E[i - 1][j - 1] + E[i][j - 1];
        }
    }

    return E[n][m];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).
