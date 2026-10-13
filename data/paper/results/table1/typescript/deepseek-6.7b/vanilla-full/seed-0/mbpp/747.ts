function lcs_of_three(X: string, Y: string, Z: string): number {
    const m = X.length;
    const n = Y.length;
    const p = Z.length;

    let L = Array(m + 1).fill(null).map(() => Array(n + 1).fill(Array(p + 1).fill(0)));

    for (let i = 0; i <= m; i++) {
        for (let j = 0; j <= n; j++) {
            for (let k = 0; k <= p; k++) {
                if (i === 0 || j === 0 || k === 0) {
                    L[i][j][k] = 0;
                } else if (X[i - 1] === Y[j - 1] && X[i - 1] === Z[k - 1]) {
                    L[i][j][k] = L[i - 1][j - 1][k - 1] + 1;
                } else {
                    L[i][j][k] = Math.max(Math.max(L[i - 1][j][k], L[i][j - 1][k]), L[i][j][k - 1]);
                }
            }
        }
    }

    return L[m][n][p];
}

console.log(`LCS for input Sequences "ABCBDAB", "BDCAB", "BADACB": ${lcs_of_three("ABCBDAB", "BDCAB", "BADACB")}`);
console.log(`LCS for input Sequences "ABCDEF", "ACEF", "AECBFE": ${lcs_of_three("ABCDEF", "ACEF", "AECBFE")}`);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
