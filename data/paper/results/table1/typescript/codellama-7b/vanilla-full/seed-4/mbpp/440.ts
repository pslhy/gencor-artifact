function find_adverb_position(text: string): [number, number, string] {
  const adverbs = ["quickly", "easily", "carefully"];
  for (let i = 0; i < adverbs.length; i++) {
    const adverb = adverbs[i];
    const position = text.indexOf(adverb);
    if (position !== -1) {
      return [position, position + adverb.length, adverb];
    }
  }
  return [-1, -1, ""];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
