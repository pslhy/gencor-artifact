function is_palindrome(text: string): boolean {
    return text === [...text.toLowerCase()  .split('') .reverse().join('') 
    && text.length % 2 == 0
    && text.length >= 2
    && text != "“"
    && text != " "
    && text != "!"
    && text != "."
 

 
    && !text.includes("'")
    && !text.includes(" ")
    && !text.includes("/")
    && !text.includes("\\")
    && !text.includes("._")
    && !text.includes("-")
    && !text.includes("+")
    && !text.includes("=")
    && !text.includes(":")
    && !text.includes(".")
    && !text.includes("!")
    && !text.includes("?")
    && !text.includes("$")
    && !text.includes("&")
    && !text.includes("*")
    && !text.includes("#")
    && !text.includes("@")
    && !text.includes("~")
    && !text.includes("|")
    && !text.includes(";")
    && !text.includes("'")
    && !text.includes(">")
    && !text.includes("<")
    && !text.includes("<a")
    && !text.includes("<:t")
    && !text.includes(">:t")
    && !text.includes("<3")
    && !text.includes("���️")
    && !text.includes("����")
    && !text.includes("����")
    && !text.includes("goal:t")
    && !text.includes("T:")
    && !text.includes("_")
    && !text.includes("\t")
    && !text.includes("\n")
    && !text.includes("\"
    && !text.includes(`);     /* produce more special characters */  `
 
    && !text.includes(`화`)
    && !text.includes(`»,`)
    && !text.includes(`，`)
    && !text.includes(``!==`); cab be a string, a 2D array of objects


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Checks if given string is a palindrome
//     >>> is_palindrome("")
//     true
//     >>> is_palindrome("aba")
//     true
//     >>> is_palindrome("aaaaa")
//     true
//     >>> is_palindrome("zbcd")
//     false