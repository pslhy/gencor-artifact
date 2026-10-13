function Find_Max_Length(lst: number[][]): number {
  const dp: number[] = new Array(lst.length);
  dp[0] = lst[0].length;
  for (let i = 1; i < lst.length; i++) {
    dp[i] = Math.max(dp[i - 1], lst[i].length);
  }
  return Math.max(...dp);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest subarrays.
