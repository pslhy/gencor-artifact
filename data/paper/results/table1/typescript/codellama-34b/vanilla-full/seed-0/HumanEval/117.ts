function select_words(s: string, n: number): string[] {
  const words = s.split(' ');
  const consonants = 'bcdfghjklmnpqrstvwxyz';
  return words.filter(word => {
    let count = 0;
    for (const char of word.toLowerCase()) {
      if (consonants.indexOf(char) >= 0) {
        count++;
      }
    }
    return count === n;
  });
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a string s and a natural number n, you have been tasked to implement
//     a function that returns an array of all words from string s that contain exactly
//     n consonants, in order these words appear in the string s.
//     If the string s is empty then the function should return an empty array.
//     Note: you may assume the input string contains only letters and spaces.
//     Examples:
//     >>> select_words("Mary had a little lamb", 4)
//     ["little"]
//     >>> select_words("Mary had a little lamb", 3)
//     ["Mary", "lamb"]
//     >>> select_words("simple white space", 2)
//     []
//     >>> select_words("Hello world", 4)
//     ["world"]
//     >>> select_words("Uncle sam", 3)
//     ["Uncle"]
