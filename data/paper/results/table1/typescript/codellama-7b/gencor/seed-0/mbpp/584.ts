
function find_adverbs(text: string): string {
  const adverbs: string[] = [];
  const positions = text.split('').map((_, i) => i);

  const regex = /\w+\ly$/g;
  let match: RegExpExecArray | null;

  while ((match = regex.exec(text)) !== null) {
    adverbs.push(match[0]);
  }

  return JSON.stringify({ adverbs: adverbs, positions: positions });
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.
