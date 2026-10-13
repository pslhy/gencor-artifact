function lps(str: string): number {
  const dp: number[][] = [];
  let max = 0;
  
  for (let i = 0; i < str.length; i++) {
    dp[i] = [];
    dp[i][0] = 1;
    for (let j = 1; j <= i; j++) {
      if (str[i] === str[j]) {
        dp[i][j] = dp[i - 1][j - 1] + 2;
      } else {
        dp[i][j] = Math.max(dp[i - 1][j], dp[i][j - 1]);
      }
      max = Math.max(max, dp[i][j]);
    }
  }
  return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the length of the longest palindromic subsequence in the given string.
