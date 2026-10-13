function find_adverb_position(text: string): [number, number, string] {
   const tokens: string[] = text.split(' ');
   let result: [number, number, string] = [-1, -1, '']
   for(let index: number = 0; index < tokens.length; index++) {
      const token: string = tokens[index];
      if (token === 'quickly' || token === 'gently' || token === 'carefully') {
         result = [index, tokens.length - 1, token]
         break
      }
   }
   return result
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.