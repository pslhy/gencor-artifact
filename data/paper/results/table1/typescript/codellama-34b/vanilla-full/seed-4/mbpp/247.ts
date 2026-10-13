function lps(str: string): number {
   let n = str.length;
   if (n == 0) return 0;
   let dp: number[][] = [];
   for (let i = 0; i < n; i++) {
       dp[i] = [];
       for (let j = 0; j < n; j++) {
           if (i == j) {
               dp[i][j] = 1;
           } else if (Math.abs(i - j) == 1) {
               if (str[i] == str[j]) {
                   dp[i][j] = 2;
               } else {
                   dp[i][j] = 1;
               }
           } else {
               dp[i][j] = Math.max(dp[i][j - 1], dp[i - 1][j]);
           }
       }
   }
   return dp[n - 1][n - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the length of the longest palindromic subsequence in the given string.
