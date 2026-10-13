function rescale_to_unit(numbers: number[]): number[] {
  let min = numbers[0];
  let max = numbers[0];

  for (let i = 0; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }

  const range = max - min;
  const result: number[] = [];

  for (let i = 0; i < numbers.length; i++) {
    result.push(((numbers[i] - min) / range) * 1.0);
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given array of numbers (of at least two elements), apply a linear transform to that array,
//     such that the smallest number will become 0 and the largest will become 1
//     >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
//     [0.0, 0.25, 0.5, 0.75, 1.0]
