function lps(str: string): number {
   const dp: number[][] = [];
   for (let i = 0; i < str.length; i++) {
       dp[i] = [];
       for (let j = 0; j < str.length; j++) {
           if (i == j) {
               dp[i][j] = 1;
           } else if (Math.abs(i - j) == 1 && str[i] == str[j]) {
               dp[i][j] = 2;
           } else {
               dp[i][j] = Math.max(dp[i - 1][j], dp[i][j - 1]);
           }
       }
   }
   return dp[str.length - 1][str.length - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the length of the longest palindromic subsequence in the given string.
