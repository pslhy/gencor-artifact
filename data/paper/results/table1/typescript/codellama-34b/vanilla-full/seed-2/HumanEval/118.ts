function get_closest_vowel(word: string): string {
    let vowel = "";
    let lastVowel = "";
    for (let i = word.length - 1; i >= 0; i--) {
        const char = word[i];
        if ("aeiou".indexOf(char.toLowerCase()) >= 0) {
            lastVowel = char;
        } else if (lastVowel !== "") {
            vowel = lastVowel;
            break;
        }
    }
    return vowel;
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
