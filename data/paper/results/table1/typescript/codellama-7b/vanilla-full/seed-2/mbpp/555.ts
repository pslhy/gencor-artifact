function difference(n: number): number {
  return Math.cubeSum(n) - Math.sum(n);
}

function Math.cubeSum(n: number): number {
  return Array(n).fill(1).reduce((a, b, i) => a + i ** 3, 0);
}

function Math.sum(n: number): number {
  return Array(n).fill(1).reduce((a, b) => a + b, 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers.
