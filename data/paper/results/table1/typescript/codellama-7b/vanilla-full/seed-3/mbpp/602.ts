function first_repeated_char(str1: string): string | undefined {
  if(str1.length <= 1) return undefined;

  const charset = new Set<string>();
  let repeated_char: string | undefined;

  for(const c of str1) {
    if(charset.has(c)) {
      repeated_char = c;
      break;
    }
    charset.add(c);
  }

  return repeated_char;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first repeated character in a given string.
