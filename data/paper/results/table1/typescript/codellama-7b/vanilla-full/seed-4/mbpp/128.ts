function long_words(n: number, str: string): string[] {
  const words: string[] = [];

  for (let i = 0; i < str.length; i++) {
    if (str[i].length > n) {
      words.push(str[i]);
    }
  }

  return words;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find words that are longer than n characters from a given array of words.
