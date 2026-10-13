function find_adverb_position(text: string): [number, number, string] {;
  const regex = /(\w+ly)\b/g;
  const match = text.match(regex)![0];
  const startIndex = text.indexOf(match);
  const endIndex = startIndex + match.length;
  return [startIndex, endIndex, match];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.