function max_sub_array_sum_repeated(a: number[], n: number, k: number): number {
  if (k == 1) {
    return a.reduce((acc, x) => acc + x, 0);
  }

  let res = 0;
  for (let i = 0; i < a.length; ++i) {
    res = Math.max(res, max_sub_array_sum_repeated(a.slice(i, i + n), n, k - 1));
  }

  return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
