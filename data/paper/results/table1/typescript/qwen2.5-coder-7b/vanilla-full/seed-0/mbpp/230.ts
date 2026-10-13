function replace_blank(str1: string, char: string): string { 
  return str1.split(' ').join(char); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string.
