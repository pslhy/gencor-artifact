function find_max(words: string[]): string {
  if(words.length === 0){
    throw new Error("No words provided");
  }
  let maxWord: string = words[0];
  let maxChars: number = 0;
  
  for(let word of words){
    let chars: number = new Set(word).size;
    if(chars > maxChars){
      maxChars = chars;
      maxWord = word;
    }else if(chars === maxChars){
      maxWord = word < maxWord ? word : maxWord;
    }
  }
  return maxWord;
}


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
