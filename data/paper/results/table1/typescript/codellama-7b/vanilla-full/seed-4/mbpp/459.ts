function remove_uppercase(str1: string): string {
  let result: string = "";

  for (let i: number = 0; i < str1.length; i++) {
    if (i == str1.length - 1 || str1[i + 1].toLowerCase() != str1[i].toUpperCase()) {
      result = result.concat(str1[i]);
    }
  }

  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uppercase substrings from a given string.
