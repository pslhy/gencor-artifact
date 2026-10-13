function get_closest_vowel(word: string): string {
  const vowels: string[] = ['a', 'e', 'i', 'o', 'u'];
  const wordChars: string[] = word.split('');
  for (let i = wordChars.length - 1; i >= 0; i--) {
    if (vowels.indexOf(wordChars[i]) !== -1 && i > 0 && wordChars[i - 1] !== wordChars[i]) {
      return wordChars[i];
    }
  }
  return '';
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given a word. Your task is to find the closest vowel that stands between
//     two consonants from the right side of the word (case sensitive).
//     Vowels in the beginning and ending doesn't count. Return empty string if you didn't
//     find any vowel met the above condition.
//     You may assume that the given string contains English letter only.
//     Example:
//     >>> get_closest_vowel("yogurt")
//     "u"
//     >>> get_closest_vowel("FULL")
//     "U"
//     >>> get_closest_vowel("quick")
//     ""
//     >>> get_closest_vowel("ab")
//     ""
