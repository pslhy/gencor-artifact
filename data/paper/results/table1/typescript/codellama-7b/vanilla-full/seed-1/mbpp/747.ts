function lcs_of_three(X: string, Y: string, Z: string): number {
    let dp: number[][] = [];

    for (let i = 0; i <= X.length; i++) {
        dp[i] = [];
        for (let j = 0; j <= Y.length; j++) {
            dp[i][j] = [];
            for (let k = 0; k <= Z.length; k++) {
                if (i == 0 || j == 0 || k == 0) {
                    dp[i][j][k] = 0;
                }
                else if (X[i - 1] == Y[j - 1] && X[i - 1] == Z[k - 1]) {
                    dp[i][j][k] = dp[i - 1][j - 1][k - 1] + 1;
                }
                else {
                    dp[i][j][k] = Math.max(dp[i - 1][j][k], dp[i][j - 1][k], dp[i][j][k - 1]);
                }
            }
        }
    }
    return dp[X.length][Y.length][Z.length];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
