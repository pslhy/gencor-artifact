function remove_lowercase(str1: string): string {
  let str2: string = "";
  [...str1].forEach((char) => {
    if (char === char.toUpperCase()) {
      str2 += char;
    }
  });
  return str2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove lowercase substrings from a given string.
