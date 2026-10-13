function digit_distance_nums(n1: number, n2: number): number {
  const digits1 = String(n1).toString().split("").map(Number);
  const digits2 = String(n2).toString().split("").map(Number);
  const diffs = digits1.map((digit, i) => Math.abs(digit - digits2[i]));
  return diffs.reduce((a: number, b: number) => a + b);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.