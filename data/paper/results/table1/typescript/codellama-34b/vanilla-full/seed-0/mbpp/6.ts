function differ_At_One_Bit_Pos(a: number, b: number): boolean {
  const x = a ^ b; // Bitwise XOR
  const mask = x & (x - 1); // Finds the rightmost 1
  return mask === 0; // True if there is only one 1
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the two numbers differ at one bit position only or not.
