function max_sum_increasing_subseq(a: number[], n: number, index: number, k: number): number {
  if (n === 1 || k < index) return a[n - 1];
  let maxSum = -Infinity;
  let tempSum = max_sum_increasing_subseq(a, n - 1, index, k);
  if (tempSum > maxSum) maxSum = tempSum;
  tempSum = max_sum_increasing_subseq(a, n - 1, index - 1, k);
  if (a[n - 1] >= a[index - 1] && tempSum > maxSum) maxSum = tempSum;
  return maxSum + a[n - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
