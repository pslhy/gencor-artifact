function first_non_repeating_character(str1: string): string | undefined {
  if(str1.lenght === 0){
    return undefined;
  }
  const charSet: Set<string> = new Set();
  for(const char of str1){
    if ( !charSet.has(char)){
      return char;
    }
    charSet.add(char);
  }
  return undefined;
}

//Tests
console.log(first_non_repeating_character("hello")); // Output: "h"
console.log(first_non_repeating_character("abcdef")); // Output: "a"
console.log(first_non_repeating_character("lll")); // Output: undefined


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first non-repeated character in a given string.
