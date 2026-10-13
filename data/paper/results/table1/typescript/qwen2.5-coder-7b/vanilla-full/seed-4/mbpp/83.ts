function get_Char(strr: string): string { 
    let result = 0; 
    for (let i of strr) { 
        result = (result + i.charCodeAt(0) - 'a'.charCodeAt(0)) % 26; 
    } 
    return String.fromCharCode('a'.charCodeAt(0) + result); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26.
