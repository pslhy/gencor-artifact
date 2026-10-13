function rolling_max(numbers: number[]): number[] {
  let max = -Infinity;
  return numbers.map((n) => {
    max = Math.max(max, n);
    return max;
  });
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     From a given array of integers, generate an array of rolling maximum element found until given moment
//     in the sequence.
//     >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
//     [1, 2, 3, 3, 3, 4, 4]
