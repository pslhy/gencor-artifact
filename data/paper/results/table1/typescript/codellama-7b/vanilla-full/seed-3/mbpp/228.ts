function all_Bits_Set_In_The_Given_Range(n: number, l: number, r: number): boolean {
  if(l >= 0 && l < 32 && r >= 0 && r < 32) {
    let range = (1 << (r - l + 1)) - 1;
    return !((n & range) === 0);
  }
  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether all the bits are unset in the given range or not.
