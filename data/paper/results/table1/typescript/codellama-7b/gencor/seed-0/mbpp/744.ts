
function check_none(test_tup: any): boolean {
  for (const el of test_tup) {
    if (el === null || el === undefined) {
      return true;
    }
  }
  return false;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given array has any none value or not.
