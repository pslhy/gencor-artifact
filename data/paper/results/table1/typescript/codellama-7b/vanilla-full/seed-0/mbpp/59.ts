function is_octagonal(n: number): number {
  const x = Math.sqrt(24 * n + 1);
  return x > 0 && x % 1 === 0 ? x : undefined;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth octagonal number.
