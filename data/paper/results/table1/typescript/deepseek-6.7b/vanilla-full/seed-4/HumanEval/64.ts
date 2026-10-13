function vowels_count(s: string): number {
    let count = 0;
    const vowels = ['a', 'e', 'i', 'o', 'u', 'y'];

    for (let i = 0; i < s.length; i++) {
        if (vowels.includes(s[i].toLowerCase())) {
            if (i === s.length - 1 && s[i] === 'y') {
                count++;
            } else if (i !== s.length - 1) {
                count++;
            }
        }
    }

    return count;
}

console.log(vowels_count("abcde"));  // Output: 2
console.log(vowels_count("ACEDY"));  // Output: 3


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
