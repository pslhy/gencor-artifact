function find_adverb_position(text: string): [number, number, string] {
  const words = text.split(' ');
  for (let i = 0; i < words.length; i++) {
    if (words[i].endsWith('ly')) {
      return [i, i - 1, words[i - 1] + ' ' + words[i]];
    }
  }
  return [-1, -1, ''];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
