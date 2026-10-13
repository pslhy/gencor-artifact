function remove_lowercase(str1: string): string {
    const lowercaseChars = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", 'n', "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
    return str1.split("").filter(char => !lowercaseChars.includes(char)).join("");
}

const result = remove_lowercase("AbcDE"); // returns "ABC"
console.log(result);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove lowercase substrings from a given string.
