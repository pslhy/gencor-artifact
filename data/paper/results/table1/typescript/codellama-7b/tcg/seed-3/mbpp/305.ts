function start_withp(words: string[]): [string, string] {
  let p1: string;
  let p2: string;

  // loop through the array and find two words starting with letter 'p'
  words.forEach((word) => {
    if (word[0] === 'p') {
      // if first word is not defined, set it to current word
      if (p1 === undefined) {
        p1 = word;
      // else if second word is not defined, set it to current word
      } else if (p2 === undefined) {
        p2 = word;
      // else if both words are defined, return them both
      } else {
        return [p1, p2];
      }
    }
  });

  // if no words are found return null
  return null


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to return two words from an array of words starting with letter 'p'.