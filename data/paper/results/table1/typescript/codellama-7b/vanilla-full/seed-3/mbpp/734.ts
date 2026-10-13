function sum_Of_Subarray_Prod(arr: number[]): number {
  let n = arr.length;
  let dp = Array(n).fill(0);
  let product = Array(n).fill(1);
  let res = 0;
  for (let i = 0; i < n; i++) {
    product[i] = 1;
    for (let j = i; j < n; j++) {
      product[j] = product[j - 1] * arr[j];
    }
    for (let j = i; j < n; j++) {
      dp[j] += product[j] * (j - i + 1);
    }
  }
  for (let i = 0; i < n; i++) {
    res += dp[i];
  }
  return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find sum of products of all possible subarrays of a given array. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-subarrays/
