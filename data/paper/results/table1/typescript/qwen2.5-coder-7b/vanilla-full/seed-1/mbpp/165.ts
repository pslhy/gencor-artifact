function count_char_position(str1: string): number { 
    str1 = str1.toLowerCase(); 
    let count = 0; 
    let str2 = 'abcdefghijklmnopqrstuvwxyz'; 
    for (let i = 0; i < str1.length; i++) { 
        if (str1[i] !== ' ' && str2.indexOf(str1[i]) === i) { 
            count++; 
        } 
    } 
    return count; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive).
