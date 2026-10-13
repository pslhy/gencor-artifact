function find_adverbs(text: string): string {
  const adverbs: string[] = [];
  let positions = [];
  for (let i = 0; i < text.length; i++) {
    const word = text.slice(i).match(/[a-zA-Z]{2,}ly/g)![0];
    if (word) {
      adverbs.push(word);
      positions.push(i);
      i += word.length - 1;
    }
  }
  return `Adverb\tPosition\n${adverbs.join("\t")}\n${positions.join("\t")}`;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.