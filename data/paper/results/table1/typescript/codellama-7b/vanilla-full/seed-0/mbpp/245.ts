function max_sum(arr: number[]): number {
  const n = arr.length;
  if (n === 1) return arr[0];

  let inc_sum = 0;
  let dec_sum = 0;
  for (let i = 0; i < n; i++) {
    inc_sum = Math.max(inc_sum + arr[i], dec_sum);
    if (i > 0 && arr[i] > arr[i - 1]) {
      dec_sum = inc_sum;
    }
  }

  return Math.max(inc_sum, dec_sum);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
