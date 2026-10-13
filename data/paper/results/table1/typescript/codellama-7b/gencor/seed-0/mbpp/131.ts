
function reverse_vowels(str1: string): string {
  const vowels: string = 'aeiouAEIOU';
  let reversed_str: string = '';
  let vowel_idx: number = 0;
  for (let i = 0; i < str1.length; i++) {
    if (vowels.includes(str1[i]) && !reversed_str.includes(str1[i])) {
      let vowel_chr: string = str1[i];
      reversed_str = vowel_chr + reversed_str;
      vowel_idx++;
    } else {
      reversed_str += str1[i];
    }
  }
  return reversed_str;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
