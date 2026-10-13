function start_withp(words: string[]): [string, string] {
  const p_words: string[] = words.filter((word) => word.startsWith('p'));
  return [p_words[0], p_words[1]];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to return two words from an array of words starting with letter 'p'.
