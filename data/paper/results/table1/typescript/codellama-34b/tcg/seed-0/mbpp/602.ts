function first_repeated_char(str1: string): string | undefined {
  const obj = Object.keys(str1);
  for (let i = 0; i < obj.length; i++) {
    const ch = obj[i];
    if (str1.indexOf(ch) != str1.lastIndexOf(ch)) {
      return ch;
    }
  }
  return undefined;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first repeated character in a given string.