function check_tuplex(tuplex: (string | number)[], tuple1: any): boolean {
  for (const tuple of tuplex) {
    if (JSON.stringify(tuple1) === JSON.stringify(tuple)) return true;
  }
  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether an element exists within an array.
