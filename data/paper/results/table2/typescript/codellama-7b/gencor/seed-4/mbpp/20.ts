
function is_woodall(x: number): boolean {
  if (x >= 1 && x <= 25) return true;
  if (x >= 27 && x <= 35) return true;
  if (x >= 37 && x <= 43) return true;
  return false;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given number is woodball or not.
