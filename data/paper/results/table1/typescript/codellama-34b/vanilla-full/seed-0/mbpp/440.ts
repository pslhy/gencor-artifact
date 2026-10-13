function find_adverb_position(text: string): [number, number, string] {
  const words = text.split('\n');
  let adverb = null;
  let adverb_position: [number, number] = null;
  for (let i = 0; i < words.length; i++) {
    if (is_adverb(words[i])) {
      adverb = words[i];
      adverb_position = [i, i + adverb.length];
      break;
    }
  }
  return [adverb_position[0], adverb_position[1], adverb];
}

function is_adverb(word: string): boolean {
  // Your logic to determine if the word is an adverb
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
