
function is_woodall(x: number): boolean {
  const digits = Array.from(String(x)).map(Number);
  for (let i = 0; i < digits.length; i++) {
    if (digits[i] !== digits[i+1]) return false;
  }
  return true;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given number is woodball or not.
