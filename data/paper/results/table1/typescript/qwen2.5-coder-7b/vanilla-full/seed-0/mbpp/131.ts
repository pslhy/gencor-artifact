function reverse_vowels(str1: string): string { 
  let vowels = 'aeiouyAEIOUY'; 
  let strArray = str1.split('');
  let i = 0, j = str1.length - 1;
  while (i < j) {
    if (!vowels.includes(strArray[i])) {
      i++;
    } else if (!vowels.includes(strArray[j])) {
      j--;
    } else {
      [strArray[i], strArray[j]] = [strArray[j], strArray[i]];
      i++;
      j--;
    }
  }
  return strArray.join('');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
