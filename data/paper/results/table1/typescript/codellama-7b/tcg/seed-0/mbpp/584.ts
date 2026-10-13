function find_adverbs(text: string): string {
  const adverbs: string[] = [];
  const positions = [];

  for (let i = 0; i < text.length; i++) {
    if (text.slice(i).match(/[a-zA-Z]ly$/g)!) {
      adverbs.push(text.slice(i, i+3));
      positions.push(i);
      i += 3;
    }
  }

  return adverbs.join(", ") + "  positions: " + positions;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.