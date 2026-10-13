function lps(str: string): number {
  let dp = Array(str.length).fill(0).map(() => Array(str.length).fill(0));

  for (let i = 0; i < str.length; i++) {
    dp[i][i] = 1;
  }

  for (let i = 0; i < str.length - 1; i++) {
    if (str[i] === str[i + 1]) {
      dp[i][i + 1] = 2;
    }
  }

  for (let i = 2; i < str.length; i++) {
    for (let j = 0; j < str.length - i; j++) {
      dp[j][j + i] = Math.max(dp[j + 1][j + i], dp[j][j + i - 1] + 1);
    }
  }

  return dp[0][str.length - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the length of the longest palindromic subsequence in the given string.
