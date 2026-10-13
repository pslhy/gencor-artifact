function text_match_two_three(text: string): boolean {
  const pattern = /ab{2,3}/;
  return pattern.test(text);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters.
