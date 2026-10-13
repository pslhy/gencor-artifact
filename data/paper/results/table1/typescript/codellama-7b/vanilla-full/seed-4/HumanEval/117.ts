function select_words(s: string, n: number): string[] {
  if (s.length === 0) {
    return [];
  }
  const words = s.split(' ');
  const consonants = new Set(['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']);
  const result: string[] = [];
  for (let i = 0; i < words.length; i++) {
    const word = words[i];
    if (consonants.size === n) {
      result.push(word);
      consonants.clear();
    }
    for (let j = 0; j < word.length; j++) {
      if (!consonants.has(word[j])) {
        consonants.add(word[j]);
      }
    }
  }
  return result;
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
