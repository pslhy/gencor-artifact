function find_adverbs(text: string): string { 
  return text.replace(/\b\w*ly\b/gi, match => {
    return `(${match})[${match.search(/[aeiou]/) + 1}-${match.length}]`;
  });
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.
