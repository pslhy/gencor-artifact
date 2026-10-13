
function find_adverb_position(text: string): [number, number, string] {;
  const regex = /(\w+ly)\b/g;
  const match = text.match(regex);
  
  if (match) {
    const firstAdverb = match[0];
    const firstMatch = text.match(regex);
    const startIndex = firstMatch ? firstMatch.index : -1;
    const endIndex = startIndex + firstAdverb.length - 1;
    return [startIndex || 0, endIndex || 0, firstAdverb];
  } else {
    return [0, 0, ""];
  }
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
