function differ_At_One_Bit_Pos(a: number, b: number): boolean {
  if (a === b) return false;
  let diff_mask = a ^ b;
  let diff_bit_pos = diff_mask.toString(2).indexOf('1');
  return diff_bit_pos !== -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the two numbers differ at one bit position only or not.
