function max_sum(arr: number[]): number {
  let maxSum = 0;

  for (let i = 0; i < arr.length - 1; i++) {
    const initialSum = arr.slice(0, i + 1).sum;
    const increasingSum = arr.slice(i + 1).reduce((a, b) => a + b, 0);
    const decreasingSum = arr.slice(0, i).reverse().reduce((a, b) => a + b, 0);

    maxSum = Math.max(
      maxSum,
      initialSum + increasingSum + decreasingSum
    );
  }

  return maxSum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
