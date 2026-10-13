function get_closest_vowel(word: string): string {
   let vowels = ["a", "e", "i", "o", "u"]
   let consonants = ["v", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q","r", "s", "t", "v", "w", "x", "z"]
   
   for( let i = word.length -1; i>=0;i--){
       if(vowels.includes(word[i])){
           return word[i];
       } else if (consonants.includes(word[i])){
           for(let j=i-1;j>=0;j--){
               if (vowels.includes(word[j])){
                   return word[j];
               }
           }
       }
   }
   return ""
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
