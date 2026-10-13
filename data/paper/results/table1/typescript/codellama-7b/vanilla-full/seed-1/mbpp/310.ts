function string_to_tuple(str1: string): string[] {
    return str1.split("");
}

console.log(string_to_tuple("Hello TypeScript!")); // Output: [ 'H', 'e', 'l', 'l', 'o', ' ', 'T', 'y', 'p', 'e', 'S', 'c', 'r', 'i', 'p', 't', '!']


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert a given string to an array of characters.
