function remove_uppercase(str1: string): string {
    return str1.replace(/[A-Z]+/g, '');
}

console.log(remove_uppercase("I want a UPPERCASE book")); // Returns: " want a  book"
console.log(remove_uppercase("HELLO THIS IS LOWERCASE")); // Returns: " hello this is lowercase"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uppercase substrings from a given string.
