function count_char_position(str1: string): number {
  let str1Lower = str1.toLowerCase();
  let arr1 = str1Lower.split("").sort();
  let arr2 = "abcdefghijklmnopqrstuvwxyz".toLowerCase().split("");
  return arr1.filter((c) => arr2.includes(c)).length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive).
