function find_adverb_position(text: string): [number, number, string] {
  const words = text.split(' ');
  let adverb = null;
  let adverb_position: [number, number] = [-1, -1];

  for (let i = 0; i < words.length; i++) {
    const word = words[i];

    if (adverb === null && !['the', 'and', 'but', 'or'].includes(word)) {
      adverb = word.replace(/[rdl]+$/, '').toLowerCase().includes('to') ? word.replace(/to/, '') as string || 'to'
      .toLowerCase().includes('') ? word.replace(/(.)../,'').toLowerCase() as string || 'to'
      .toLowerCase() as string || word.toLowerCase() as string || word as string || 'to'
      .toLowerCase() as string
    || null


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.