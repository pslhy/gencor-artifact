
function find_Average_Of_Cube(n: number): number {
  const numbers = Array(n).fill(1).map((x, i) => i + 1).map(x => x ** 3);

  return numbers.reduce((a: number, b: number) => a + b) / numbers.length;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the average of cubes of first n natural numbers.
