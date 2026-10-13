function odd_length_sum(arr: number[]): number {
  let sum = 0;
  for (let i = 0; i < arr.length; i++) {
    let odd_len = 1;
    while (i + odd_len <= arr.length) {
      sum += arr.slice(i, i + odd_len).reduce((a, b) => a + b, 0);
      odd_len += 2;
    }
  }
  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of all odd length subarrays. https://www.geeksforgeeks.org/sum-of-all-odd-length-subarrays/
