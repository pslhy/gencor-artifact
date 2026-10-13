function get_closest_vowel(word: string): string {
  if(word.length <= 1 || [word.charAt(0), word.charAt(word.length - 1)].some(char => /[aeiou]/.test(char))) return '';
  let left = word.substring(0, word.length - 1).length;
  let right = word.length;

  while(left < right){
    const mid = (left + right) >> 1;
    const mid_vow = word[mid];
    if(/[aeiou]/.test(mid_vow)){
      return mid_vow;
    } else if(/[aeiou]/.test(mid_vow)){
      left = mid + 1;
    } else {
      right = mid - 1;
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