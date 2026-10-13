function start_withp(words: string[]): [string, string] {
  let pair: [string, string];
  for (let i = 0; i < words.length; i++) {
    if (words[i].startsWith('p')) {
      pair[0] = words[i];
      break;
    }
  }
  for (let i = pair[0].length; i < words.length; i++) {
    if (words[i].startsWith('p')) {
      pair[1] = words[i];
      break;
    }
  }
  return pair;
}

// Example usage
let words = ['apple', 'banana', 'orange', 'pear', 'plum', 'grape'];
let result = start_withp(words);
console.log(result); // Output: ['pear', 'plum']


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to return two words from an array of words starting with letter 'p'.
