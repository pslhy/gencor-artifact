function start_withp(words: string[]): [string, string] {
  for (let i = 0; i < words.length; i++) {
    if (words[i].startsWith("p")) {
      return [words[i], words[i + 1]];
    }
  }
  return ['', ''];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to return two words from an array of words starting with letter 'p'.
