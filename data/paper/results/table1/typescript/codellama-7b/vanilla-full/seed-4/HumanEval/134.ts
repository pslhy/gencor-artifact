function check_if_last_char_is_a_letter(txt: string): boolean {
  if (txt.length === 0) {
    return false;
  }
  const lastchar = txt.charAt(txt.length - 1);
  if (lastchar >= 'A' && lastchar <= 'Z') {
    return true;
  }
  if (lastchar >= 'a' && lastchar <= 'z') {
    return true;
  }
  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Create a function that returns true if the last character
//     of a given string is an alphabetical character and is not
//     a part of a word, and false otherwise.
//     Note: "word" is a group of characters separated by space.
//     Examples:
//     >>> check_if_last_char_is_a_letter("apple pie")
//     false
//     >>> check_if_last_char_is_a_letter("apple pi e")
//     true
//     >>> check_if_last_char_is_a_letter("apple pi e ")
//     false
//     >>> check_if_last_char_is_a_letter("")
//     false
