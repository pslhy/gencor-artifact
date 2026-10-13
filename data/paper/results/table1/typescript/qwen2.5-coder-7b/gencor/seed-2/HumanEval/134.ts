
function check_if_last_char_is_a_letter(txt: string): boolean { 
    const trimmedTxt = txt.trim();
    if (trimmedTxt === "") return false;
    const lastChar = trimmedTxt.charAt(trimmedTxt.length - 1);
    const secondLastChar = trimmedTxt.charAt(trimmedTxt.length - 2);
    return /^[A-Za-z]$/.test(lastChar) && !/^[A-Za-z]$/.test(secondLastChar);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Create a function that returns true if the last character
//     of a given string is an alphabetical character and is not
//     a part of a word, and false otherwise.
//     Note: "word" is a group of characters separated by space.
//     Examples:
//     >>> check_if_last_char_is_a_letter("apple pie")
//     false
//     >>> check_if_last_char_is_a_letter("apple pi e")
//     true
//     >>> check_if_last_char_is_a_letter("apple pi e ")
//     false
//     >>> check_if_last_char_is_a_letter("")
//     false
