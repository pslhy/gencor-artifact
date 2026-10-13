function text_match_wordz_middle(text: string): boolean {
   if (text.length < 3) {
      return false;
   }
   if (text.charAt(0) === "z" || text.charAt(text.length - 1) === "z") {
      return false;
   }
   for (let i = 1; i < text.length - 1; i++) {
      if (text.charAt(i) === "z") {
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
//     Write a function that checks if a strings contains 'z', except at the start and end of the word.
