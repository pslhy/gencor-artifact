function text_match_wordz(text: string): boolean {
  if(text.includes('z')){
    return true
  }else{
    return false
  }
}
console.log(text_match_wordz('botany')) // false
console.log(text_match_wordz('azalea')) // true


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that matches a word containing 'z'.
