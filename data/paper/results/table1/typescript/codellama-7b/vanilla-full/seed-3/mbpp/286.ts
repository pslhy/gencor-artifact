function max_sub_array_sum_repeated(a: number[], n: number, k: number): number {
  if(k === 0) {
    return 0;
  }
  let maxSum = Number.MIN_SAFE_INTEGER;
  for(let i = 0; i < n; i++) {
    let currSum = 0;
    for(let j = i; j < n; j++) {
      currSum += a[j];
      if(currSum > maxSum) {
        maxSum = currSum;
      }
    }
  }
  return maxSum * k;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
