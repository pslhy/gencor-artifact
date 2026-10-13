function count_char_position(str1: string): number { 
    let result = 0; 
    for (let i of str1.toLowerCase()) { 
        if ((i.charCodeAt(0) - 97) == str1.indexOf(i)) { 
            result += 1; 
        } 
    } 
    return result; 
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive).
