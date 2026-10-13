function sum_squares(lst: number[]): number {
  const rounded = lst.map(Math.ceil);
  return rounded.reduce((a, b) => a + b * b, 0);
}

sum_squares([1.0, 2.0, 3.0]); // 14
sum_squares([1.0, 4.0, 9.0]); // 98
sum_squares([1.0, 3.0, 5.0, 7.0]); // 84
sum_squares([1.4, 4.2, 0.0]); // 29
sum_squares([-2.4, 1.0, 1.0]); // 6


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given an array of numbers.
//     You need to return the sum of squared numbers in the given array,
//     round each element in the array to the upper int(Ceiling) first.
//     Examples:
//     >>> lst([1.0, 2.0, 3.0])
//     14
//     >>> lst([1.0, 4.0, 9.0])
//     98
//     >>> lst([1.0, 3.0, 5.0, 7.0])
//     84
//     >>> lst([1.4, 4.2, 0.0])
//     29
//     >>> lst([-2.4, 1.0, 1.0])
//     6
