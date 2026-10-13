function lps(str: string): number {
    const n = str.length;
    const dp: number[][] = Array.from({ length: n }, () => Array(n).fill(0));

    for (let gap = 0; gap < n; gap++) {
        for (let i = 0, j = gap; j < n; i++, j++) {
            if (gap == 0) {
                dp[i][j] = 1;
            } else if (gap == 1) {
                dp[i][j] = str[i] === str[j] ? 2 : 1;
            } else {
                if (str[i] === str[j]) {
                    dp[i][j] = dp[i + 1][j - 1] + 2;
                } else {
                    dp[i][j] = Math.max(dp[i][j - 1], dp[i + 1][j]);
                }
            }
        }
    }
    return dp[0][n - 1];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the length of the longest palindromic subsequence in the given string.
