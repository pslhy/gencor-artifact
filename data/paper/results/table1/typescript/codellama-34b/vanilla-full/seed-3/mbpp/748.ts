function capital_words_spaces(str1: string): string {
  let str2 = str1.split(' ');
  for (let i = 0; i < str2.length; i++) {
    if (str2[i].charAt(0) == str2[i].charAt(0).toUpperCase()) {
      str2.splice(i, 0, ' ');
      i++;
    }
  }
  return str2.join(' ');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to put spaces between words starting with capital letters in a given string.
