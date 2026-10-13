
function centered_hexagonal_number(n: number): number {
  const x = (n * 2) - 1;
  const y = (n * 2) + 1;
  return (x * y) / 2;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth centered hexagonal number.
