function find_max(words: string[]): string {
  const uniqueChars: Record<string, number> = {};
  words.forEach((word) => {
    if (!uniqueChars[word]) {
      uniqueChars[word] = word.length;
    }
  });
  return Object.keys(uniqueChars).reduce((max, current) => {
    if (uniqueChars[max] < uniqueChars[current]) {
      return current;
    }
    return max;
  }, words[0]);
}

const result = find_max(["aaaaaaa", "bb", "cc"]);
console.log(result); // Output: "aaaaaaa"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that accepts an array of strings.
//     The array contains different words. Return the word with maximum number
//     of unique characters. If multiple strings have maximum number of unique
//     characters, return the one which comes first in lexicographical order.
//     >>> find_max(["name", "of", "string"])
//     "string"
//     >>> find_max(["name", "enam", "game"])
//     "enam"
//     >>> find_max(["aaaaaaa", "bb", "cc"])
//     "aaaaaaa"
