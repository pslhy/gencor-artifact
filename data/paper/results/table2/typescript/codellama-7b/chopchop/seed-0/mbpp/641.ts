
function is_nonagonal(n: number): number {
  const digits = n ** 2 % 10;
  const sum = digits + (n ** 2 % 100) / 10;
  if (sum === n ** 2) {
    return n;
  } else {
    return -1;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.
