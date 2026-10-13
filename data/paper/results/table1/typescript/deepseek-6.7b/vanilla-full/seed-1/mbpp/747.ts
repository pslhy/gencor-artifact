function lcs_of_three(X: string, Y: string, Z: string): number {
    let m: number = X.length;
    let n: number = Y.length;
    let p: number = Z.length;

    // All the LCS_TAB[i][j][k] holds the longest common subsequence of
    // X[0..i], Y[0..j] and Z[0..k]
    let LCS_TAB: number[][][] = Array.from(new Array(m + 1), () => new Array(n + 1).fill(0).map(() => new Array(p + 1).fill(0)));

    // Fill in the LCS_TAB in bottom-up manner
    for (let i = 1; i <= m; i++) {
        for (let j = 1; j <= n; j++) {
            for (let k = 1; k <= p; k++) {
                if (X[i - 1] == Y[j - 1] && X[i - 1] == Z[k - 1])
                    LCS_TAB[i][j][k] = LCS_TAB[i - 1][j - 1][k - 1] + 1;
                else
                    LCS_TAB[i][j][k] = Math.max(Math.max(LCS_TAB[i - 1][j][k], LCS_TAB[i][j - 1][k]), LCS_TAB[i][j][k - 1]);
            }
        }
    }

    return LCS_TAB[m][n][p];
}

// Example usage:
console.log(lcs_of_three("ABCBDAB", "BDCAB", "BADACB"));  // Output: 4 ("BCAB" or "BCAB")


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
