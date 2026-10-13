function first_non_repeating_character(str1: string): string | undefined {
  if(str1.length === 0)
    return undefined;
  const charSet = new Set<string>();
  const charArray = str1.split('');
  for (const char of charArray) {
    if(charSet.has(char))
      continue;
    else
      return char;
  }
  return undefined;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first non-repeated character in a given string.