function get_Char(strr: string): string { 
    let sum: number = 0; 
    for (let i = 0; i < strr.length; i++) { 
        sum += (strr.charCodeAt(i) - 65); 
    } 
    return String.fromCharCode((sum % 26) + 65); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26.
