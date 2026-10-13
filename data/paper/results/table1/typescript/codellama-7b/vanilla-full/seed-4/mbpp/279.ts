function is_num_decagonal(n: number): number {
  if (n < 1) {
    return false;
  }

  let num_decagonal = 0;
  for (let i = 2; n > 0; i += 1) {
    num_decagonal += Math.pow(i, 2);
    n -= 1;
  }

  return num_decagonal;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth decagonal number.
