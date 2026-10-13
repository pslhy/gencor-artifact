function snake_to_camel(word: string): string {
  const tokens: string[] = word.split('_');
  let result: string = '';
  for (const token of tokens) {
    if (result.length === 0) {
      result += token;
    } else {
      result += token[0].toUpperCase() + token.slice(1);
    }
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert the given snake case string to camel case string.
