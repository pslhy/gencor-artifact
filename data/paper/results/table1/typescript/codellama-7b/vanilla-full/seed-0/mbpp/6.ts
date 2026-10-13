function differ_At_One_Bit_Pos(a: number, b: number): boolean {
  const x = a ^ b; // bitwise XOR
  const mask = 1 << x.toString(2).indexOf('1'); // get the position of the first bit that is set
  return (a & mask) === (b & mask); // check if both numbers have the bit set in the same position
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the two numbers differ at one bit position only or not.
