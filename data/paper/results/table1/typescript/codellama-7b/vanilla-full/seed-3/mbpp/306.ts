function max_sum_increasing_subseq(a: number[], n: number, index: number, k: number): number {
  if(index >= n) return 0
  if(k - n < 0) return a[index]
  return Math.max(a[index], max_sum_increasing_subseq(a, n, index + 1, k) + a[index])
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
