function check_if_last_char_is_a_letter(txt: string): boolean { 
    // Trim any trailing spaces from the input string
    txt = txt.trim();
    // Get the last character of the string
    const lastChar = txt.charAt(txt.length - 1);
    // Check if the last character is an alphabetical letter and not preceded by another letter
    return /^[A-Za-z]$/.test(lastChar) && (txt.length === 1 || !/[A-Za-z]$/.test(txt.charAt(txt.length - 2)));
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
