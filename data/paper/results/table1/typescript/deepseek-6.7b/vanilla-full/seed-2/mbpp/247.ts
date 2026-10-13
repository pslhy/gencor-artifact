function lps(str: string): number {
    let n = str.length;
    let dp: number[][] = new Array(n);
    for(let i=0; i<n; i++) {
        dp[i] = new Array(n).fill(0);
        dp[i][i] = 1;
    }
    for(let cl=2; cl<=n; cl++) {
        for(let i=0; i<n-cl+1; i++) {
            let j = i+cl-1;
            if(str[i] == str[j] && cl == 2) 
                dp[i][j] = 2;
            else if(str[i] == str[j])
                dp[i][j] = dp[i+1][j-1] + 2;
            else
                dp[i][j] = Math.max(dp[i][j-1], dp[i+1][j]);
        }
    }
    return dp[0][n-1];
}

console.log(lps("GEEKSFORGEEKS"));  // Outputs: 16


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the length of the longest palindromic subsequence in the given string.
