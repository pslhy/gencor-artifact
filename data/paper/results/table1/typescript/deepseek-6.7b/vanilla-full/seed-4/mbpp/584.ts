function find_adverbs(text: string): string {
  const words = text.split(' ');
  const regularExpression = /[a-z]*ly[,?.!]?$/i;

  for (let i = 0; i < words.length; i++) {
    if (regularExpression.test(words[i])) {
      return `First adverb ending with ly is "${words[i]}" at position ${i+1}`;
    }
  }

  return "No adverb ending with ly found in the given string";
}

console.log(find_adverbs("I am walking slowly, you are running fast, he is jumping high."));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.
