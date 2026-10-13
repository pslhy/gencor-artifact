function replace_char(str1: string, ch: string, newch: string): string { 
    return str1.split('').map(char => char === ch ? newch : char).join(''); 
}

console.log(replace_char("Hello World", "o", "0")); 
console.log(replace_char("The quick brown fox", "x", "s")); 
console.log(replace_char("Jumped over the lazy dog", " ", "-")); 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to replace characters in a string.
