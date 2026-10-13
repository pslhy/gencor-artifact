function reverse_vowels(str1: string): string {
  let vowels: string[] = ["a", "e", "i", "o", "u"];
  let result: string = "";
  for (let i: number = 0; i < str1.length; i++) {
    if (vowels.includes(str1.charAt(i))) {
      result += str1.charAt(i);
    } else {
      result += str1.charAt(i);
      i++;
    }
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
