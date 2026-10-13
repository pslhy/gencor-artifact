function vowels_count(s: string): number {
    const vowels = ["a", "e", "i", "o", "u"];
    let count = 0;
    for (const char of s.slice(0, -1)) {
        if (vowels.includes(char)) {
            count++;
        }
    }
    if (s.slice(-1) === "y") {
        count++;
    }
    return count;
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
