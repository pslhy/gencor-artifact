function odd_length_sum(arr: number[]): number {;
  let size = arr.length;
  let totalSum = 0;

  for (let i = 0; i < size; i++) {
    let subarrays = Math.ceil((i + 1) * (size - i) / 2);
    if (subarrays % 2 !== 0) {
      totalSum += arr[i] * subarrays;
    }
  }

  return totalSum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of all odd length subarrays. https://www.geeksforgeeks.org/sum-of-all-odd-length-subarrays/
