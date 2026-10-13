function text_match_two_three(text: string): boolean {
  if(text.includes('a') && text.includes('b')) {
    let a_index = text.indexOf('a');
    let b_index = text.indexOf('b');
    if(b_index - a_index < 0){
      return false;
    }
    if(b_index - a_index === 1) {
      return true;
    }
    if(b_index - a_index === 2){
      return text[b_index + 1] === 'b';
    }
  }
  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters.
