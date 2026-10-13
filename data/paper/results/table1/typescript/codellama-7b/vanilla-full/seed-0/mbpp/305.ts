function start_withp(words: string[]): [string, string] {
  const pWords: string[] = words.filter((word) => word.startsWith('p'));
  if (pWords.length === 1) {
    return [pWords[0], ""];
  } else if (pWords.length === 2) {
    return [pWords[0], pWords[1]];
  } else {
    throw new Error("Invalid input");
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to return two words from an array of words starting with letter 'p'.
