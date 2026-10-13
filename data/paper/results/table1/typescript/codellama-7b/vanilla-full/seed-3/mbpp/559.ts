function max_sub_array_sum(a: number[], size: number): number {
  if(size > a.length) {
    throw new Error("Size cannot be greater than array length");
  }

  let maxSum = -Infinity;
  let currentSum = 0;
  let start = 0;
  let end = 0;

  for(let i = 0; i < a.length; i++) {
    currentSum = currentSum + a[i];
    if(currentSum > maxSum) {
      maxSum = currentSum;
      start = i - (currentSum - maxSum);
      end = i;
    } else if(currentSum < 0) {
      currentSum = 0;
      start = i + 1;
    }
  }

  return maxSum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of the largest contiguous subarray in the given array.
