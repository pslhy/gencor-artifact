function cube_Sum(n: number): number {
  return Array(n)
    .fill(0)
    .map((_, i) => (i + 1) * (i + 1) * (i + 1))
    .reduce((acc, cur) => acc + cur, 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the cube sum of first n even natural numbers.
