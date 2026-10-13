function count_char_position(str1: string): number {
  let count: number = 0;
  for (let i = 0; i < str1.length; i++) {
    const currChar = str1.charAt(i);
    for (let j = 0; j < 26; j++) {
      const alphabetChar = String.fromCharCode(97 + j);
      if (currChar.toLowerCase() === alphabetChar) {
        count++;
        break;
      }
    }
  }
  return count;
}

console.log(count_char_position("hello"));
console.log(count_char_position("XYZ"));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive).
