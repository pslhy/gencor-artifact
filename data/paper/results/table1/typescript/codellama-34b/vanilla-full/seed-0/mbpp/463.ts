function max_subarray_product(arr: number[]): number {
  const dp: number[] = new Array(arr.length);
  dp[0] = arr[0];
  let max_so_far = arr[0];
  for (let i = 1; i < arr.length; i++) {
    dp[i] = Math.max(dp[i-1] * arr[i], arr[i], dp[i-1] / arr[i] * arr[i]);
    max_so_far = Math.max(max_so_far, dp[i]);
  }
  return max_so_far;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product subarray of the given array.
