function count_char_position(str1: string): number { 
  return str1.split('').reduce((acc, char, index) => {
    const alphabetPosition = char.toLowerCase().charCodeAt(0) - 'a'.charCodeAt(0);
    if (index === alphabetPosition) {
      acc++;
    }
    return acc;
  }, 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive).
