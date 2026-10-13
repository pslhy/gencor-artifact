function text_match_wordz_middle(text: string): boolean {
   if(text.includes('z') === true){
     if((text.indexOf('z') == 0) || (text.lastIndexOf('z') == text.length - 1) ){
       return false;
     }else{
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