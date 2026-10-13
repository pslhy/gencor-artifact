function remove_dirty_chars(string: string, second_string: string): string {
  const dirty_chars = new Set(second_string.split(''));
  let clean_string = '';
  
  for (let char of string.split('')) {
    if (!dirty_chars.has(char)) {
      clean_string += char;
    }
  }
  
  return clean_string;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove characters from the first string which are present in the second string.
