
function sumofFactors(n: number): number {
  const factors = Array.from({length: n}, (x: any, i: any) => i * 2);
  return factors.reduce((pre: any, cur: any) => pre + cur, 0);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of even factors of a number.
