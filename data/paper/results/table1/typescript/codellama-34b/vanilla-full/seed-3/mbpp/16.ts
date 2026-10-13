function text_lowercase_underscore(text: string): boolean {
  if(text.includes('_')){
    while (text.includes('_')){
      text = text.replace(text, text.replace('_', ''))
    }
  }
  return (text.isLowerCase()) ? true : false
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise.
