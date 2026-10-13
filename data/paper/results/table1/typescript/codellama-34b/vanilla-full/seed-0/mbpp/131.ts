function reverse_vowels(str1: string): string {
  const vowels: string[] = ['a', 'e', 'i', 'o', 'u'];
  const vowel_indexes: number[] = [];
  str1.split('').forEach((char, index) => {
    if (vowels.includes(char)) {
      vowel_indexes.push(index);
    }
  });
  vowel_indexes.reverse();
  const result = str1.split('');
  vowel_indexes.forEach((index) => {
    result[index] = str1[index];
  });
  return result.join('');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
