function max_sum(arr: number[]): number {
  if(arr.length <= 1){
    return 0;
  }
  const dp = Array(arr.length).fill(0);
  let max = 0;
  for(let i = 0; i < arr.length; i++) {
    dp[i] = Math.max(arr[i], dp[i]);
    max = Math.max(max, dp[i]);
  }
  return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
