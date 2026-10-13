function difference(n: number): number {
  const sumOfCubes = (n * (n + 1) * (2 * n + 1)) / 6;
  const sumOfNaturalNumbers = (n * (n + 1)) / 2;
  return sumOfCubes - sumOfNaturalNumbers;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers.
