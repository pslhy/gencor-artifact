function text_match_wordz_middle(text: string): boolean {
  const start = text.substring(0, 1);
  const end = text.substring(text.length - 1);
  if (start === "z" || end === "z") {
    return false;
  }
  return text.includes("z");
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that checks if a strings contains 'z', except at the start and end of the word.
