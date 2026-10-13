function eulerian_num(n: number, m: number): number {
    let EULER: Array<Array<number>> = new Array(m + 1);
    let DP: Array<Array<number>> = new Array(n + 1);
    for (let i = 0; i <= n; i++) {
        DP[i] = new Array(m + 1).fill(0);
        EULER[i] = new Array(m + 1).fill(0);
    }
    for (let i = 1; i <= m; i++) {
        EULER[0][i] = 0;
        DP[0][i] = 1;
    }
    for (let i = 1; i <= n; i++) {
        EULER[i][0] = 0;
        DP[i][0] = 0;
    }
    EULER[1][1] = 1;
    DP[1][1] = 1;
    for (let i = 2; i <= n; i++) {
        for (let j = 2; j <= m; j++) {
            if (i < j) {
                EULER[i][j] = EULER[i][j - 1];
                DP[i][j] = DP[i][j - 1];
            } else {
                EULER[i][j] = EULER[i - 1][j - 1] + EULER[i - 1][j] - EULER[i - j][j - 1] + DP[i - j][j];
                DP[i][j] = DP[i - 1][j] + DP[i][j - 1] - DP[i - 1][j - 1];
                if (j > i) {
                    DP[i][j] += DP[i][j - i];
                }
            }
        }
    }
    return EULER[n][m];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).
