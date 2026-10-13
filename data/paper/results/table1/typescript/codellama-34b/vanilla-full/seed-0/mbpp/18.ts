function remove_dirty_chars(string: string, second_string: string): string {
  const second_string_chars = second_string.split("");
  return string.split("").filter(char => !second_string_chars.includes(char)).join("");
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove characters from the first string which are present in the second string.
