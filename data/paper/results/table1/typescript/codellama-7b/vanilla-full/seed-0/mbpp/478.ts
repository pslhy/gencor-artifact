function remove_lowercase(str1: string): string {
  const str2: string = str1.split("").reduce((a, b) => {
    if (a.endsWith(b.toUpperCase())) {
      return a + b;
    }
    return str1.substring(str1.indexOf(b) + 1);
  }, "");
  return str2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove lowercase substrings from a given string.
