function capital_words_spaces(str1: string): string {
  const regex: RegExp = new RegExp(/\b[A-Z]/);
  return str1.replace(regex, `$& `);
}

console.log(capital_words_spaces("thisIsATest")); // Output: "this Is A Test"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to put spaces between words starting with capital letters in a given string.
