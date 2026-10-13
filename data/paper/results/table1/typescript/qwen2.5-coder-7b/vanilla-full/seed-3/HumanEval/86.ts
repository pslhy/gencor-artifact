function anti_shuffle(s: string): string {
    return s.split(' ').map(word => word.split('').sort((a, b) => a.charCodeAt(0) - b.charCodeAt(0)).join('')).join(' ');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes a string and returns an ordered version of it.
//     Ordered version of string, is a string where all words (separated by space)
//     are replaced by a new word where all the characters arranged in
//     ascending order based on ascii value.
//     Note: You should keep the order of words and blank spaces in the sentence.
//     For example:
//     >>> anti_shuffle("Hi")
//     "Hi"
//     >>> anti_shuffle("hello")
//     "ehllo"
//     >>> anti_shuffle("Hello World!!!")
//     "Hello !!!Wdlor"
