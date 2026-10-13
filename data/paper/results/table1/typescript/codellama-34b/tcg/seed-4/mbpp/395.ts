function first_non_repeating_character(str1: string): string | undefined {
   const charMap = new Map<string, number>();
  for (let i = 0; i < str1.length; i++) {
    const c = str1[i];
    charMap.set(c, charMap.get(c)!=="undefined"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first non-repeated character in a given string.