
function reverse_vowels(str1: string): string {
  let str2 = str1.split("");
  let vowels = ["a", "e", "i", "o", "u"];
  let reversed_vowels = str2.filter(c => vowels.includes(c));
  str2 = str2.map(c => vowels.includes(c) ? "" : c);
  reversed_vowels = reversed_vowels.reverse();
  reversed_vowels.forEach((c, i) => {
    if (c) {
      str2[i] = c;
    }
  });
  return str2.join("");
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
