function double_the_difference(lst: number[]): number {
  const filtered = lst.filter(n => n % 1 === 0 && n >= 0);
  const squares = filtered.map(n => n * n);
  return squares.reduce((a, b) => a + b, 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of numbers, return the sum of squares of the numbers
//     in the array that are odd. Ignore numbers that are negative or not integers.
//     >>> double_the_difference([1, 3, 2, 0])
//     10
//     >>> double_the_difference([-1, -2, 0])
//     0
//     >>> double_the_difference([9, -2])
//     81
//     >>> double_the_difference([0])
//     0
//     If the input array is empty, return 0.
