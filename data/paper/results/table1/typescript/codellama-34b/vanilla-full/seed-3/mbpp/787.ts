function text_match_three(text: string): boolean {
  if(text.includes('a' + 'b' * 3)) {
    return true;
  }
  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that matches a string that has an a followed by three 'b'.
