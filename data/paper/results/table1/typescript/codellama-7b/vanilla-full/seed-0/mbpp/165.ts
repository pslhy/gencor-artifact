function count_char_position(str1: string): number {
  const str2 = str1.toLowerCase();
  let count = 0;
  for (let i = 0; i < 26; i++) {
    const ch = String.fromCharCode(i + 97);
    if (str2.includes(ch)) count++;
  }
  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive).
