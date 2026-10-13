function find_adverbs(text: string): string {
   const adverbs = new Set(['quickly', 'eagerly', 'suddenly', 'carelessly'])
   const positions: number[] = []
   for (let i = 0; i < text.length; i++) {
      if (adverbs.has(text[i + 1])) positions.push(i)
   }
   return positions


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.