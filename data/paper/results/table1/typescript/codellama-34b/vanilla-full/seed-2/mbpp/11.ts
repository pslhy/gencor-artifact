function remove_Occ(s: string, ch: string): string {
    let output = '';
    for (let i = 0; i < s.length; i++) {
        if (s[i] != ch) {
            output += s[i];
        }
    }
    return output;
}

// Test cases
const str = 'Hello, World!';
console.log(remove_Occ(str, 'H')); // Output: ello, World!
console.log(remove_Occ(str, '!')); // Output: Hello, World
console.log(remove_Occ(str, 'W')); // Output: Hello, orld!


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove first and last occurrence of a given character from the string.
