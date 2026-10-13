function remove_vowels(text: string): string {
    return text.replace(/a|e|i|o|u|A|E|I|O|U/g, '');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     remove_vowels is a function that takes string and returns string without vowels.
//     >>> remove_vowels("")
//     ""
//     >>> remove_vowels("abcdef")
//     "bcdf"
//     >>> remove_vowels("aaaaa")
//     ""
//     >>> remove_vowels("aaBAA")
//     "B"
//     >>> remove_vowels("zbcd")
//     "zbcd"
