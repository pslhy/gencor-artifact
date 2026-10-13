function difference(n: number): number {
  const sumOfCubes = Array.from({ length: n }, (_, i) => i + 1).reduce((a, b) => a + b ** 3, 0);
  const sum = Array.from({ length: n }, (_, i) => i + 1).reduce((a, b) => a + b, 0);
  return sumOfCubes - sum ** 3;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers.
