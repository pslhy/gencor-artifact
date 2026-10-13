function remove_lowercase(str1: string): string {
  let result: string = "";

  for (let i: number = 0; i < str1.length; i++) {
    let currentChar: string = str1.charAt(i);
    let prevChar: string = "";
    let nextChar: string = "";

    if (i > 0) {
      prevChar = str1.charAt(i - 1);
    }

    if (i < str1.length - 1) {
      nextChar = str1.charAt(i + 1);
    }

    if (
      currentChar.toLowerCase() === currentChar &&
      prevChar.toLowerCase() !== currentChar &&
      nextChar.toLowerCase() !== currentChar
    ) {
      result += currentChar;
    }
  }

  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove lowercase substrings from a given string.
