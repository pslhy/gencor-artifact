function odd_length_sum(arr: number[]): number {
  let sum: number = 0;
  for (let i = 1; i < arr.length - 1; i += 2) {
    sum += arr.slice(i, i + 1).reduce((a, b) => a + b);
  }
  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of all odd length subarrays. https://www.geeksforgeeks.org/sum-of-all-odd-length-subarrays/
