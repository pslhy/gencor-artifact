function vowels_count(s: string): number {
    let vowelCount = 0;
    for (let i = 0; i < s.length; i++) {
        if (s[i] === 'a' || s[i] === 'e' || s[i] === 'i' || s[i] === 'o' || s[i] === 'u') {
            vowelCount++;
        } else if (s[i] === 'y' && i === s.length - 1) {
            vowelCount++;
        }
    }
    return vowelCount;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function vowels_count which takes a string representing
//     a word as input and returns the number of vowels in the string.
//     Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
//     vowel, but only when it is at the end of the given word.
//     Example:
//     >>> vowels_count("abcde")
//     2
//     >>> vowels_count("ACEDY")
//     3
