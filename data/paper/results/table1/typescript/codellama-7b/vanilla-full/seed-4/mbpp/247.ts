function lps(str: string): number {
  const len = str.length;
  const dp: number[][] = [];

  for (let i = 0; i < len; i++) {
    dp[i] = new Array(len).fill(0);
  }

  for (let i = 0; i < len; i++) {
    for (let j = i; j < len; j++) {
      if (i === j) {
        dp[i][j] = 1;
      } else if (str[i] === str[j]) {
        dp[i][j] = dp[i + 1][j - 1] + 2;
      } else {
        dp[i][j] = Math.max(dp[i + 1][j], dp[i][j - 1]);
      }
    }
  }

  return dp[0][len - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the length of the longest palindromic subsequence in the given string.
