function find_adverb_position(text: string): [number, number, string] {
   const tokens: Array<string> = text.split(' ');
   const adverbs: Array<string> = [ 'v API:', 'really', 'very', 'too', 'adorably', 'nicely', 'fast', 'rapidly', 'quickly' ];
   let adverb_indices: Array<number> = [];
   let adverb_text: Array<string> = [];
   let i: number = 0;
   for (const token of tokens) {
       if (token in adverbs) {
           adverb_indices.push(i);
           adverb_text.push(token);
       }
       i += 1;
   }
   return [adverb_indices, adverb_text];

}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
