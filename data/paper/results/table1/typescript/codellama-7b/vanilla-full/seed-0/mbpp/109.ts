function odd_Equivalent(s: string, n: number): number {
  const rotatedStr: string = s.split("").reduce((a, b) => b + a, "");
  return rotatedStr.split("1").length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the number of numbers with an odd value when rotating a binary string the given number of times.
