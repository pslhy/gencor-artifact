function count_vowels(test_str: string): number {
    let vowel_count = 0;

    for (let i = 0; i < test_str.length; i++) {
        if (isVowel(test_str[i])) {
            vowel_count++;
        }
    }

    return vowel_count;
}

function isVowel(char: string): boolean {
    return char === "a" || char === "e" || char === "i" || char === "o" || char === "u";
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count those characters which have vowels as their neighbors in the given string.
