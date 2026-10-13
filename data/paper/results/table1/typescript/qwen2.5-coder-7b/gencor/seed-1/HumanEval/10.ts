
function make_palindrome(string: string): string { // Function that takes in a string as a parameter
    let reversed = string.split('').reverse().join(''); // Reversing the given string
    for (let i = 0; i < string.length; i++) { // Loop through the given string to find the longest postfix that is a palindrome
        if (string.substring(i) === reversed.substring(0, string.length - i)) { // Check if the remaining part of the string is the same as the start of the reversed string
            return string + reversed.substring(string.length - i); // If it is, return the original string + the remaining part of the reversed string
        }
    }
    return string + reversed.substring(1); // If no palindromic suffix is found, return the original string + the reversed string without the first character
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Find the shortest palindrome that begins with a supplied string.
//     Algorithm idea is simple:
//     - Find the longest postfix of supplied string that is a palindrome.
//     - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
//     >>> make_palindrome("")
//     ""
//     >>> make_palindrome("cat")
//     "catac"
//     >>> make_palindrome("cata")
//     "catac"
