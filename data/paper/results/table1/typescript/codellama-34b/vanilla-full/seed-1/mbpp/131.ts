function reverse_vowels(str1: string): string {
    let vowels = ["a", "e", "i", "o", "u"];
    let str2 = "";
    for (let i = str1.length - 1; i >= 0; i--) {
        if (vowels.includes(str1[i].toLowerCase())) {
            str2 += str1[i];
        }
    }
    return str2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
