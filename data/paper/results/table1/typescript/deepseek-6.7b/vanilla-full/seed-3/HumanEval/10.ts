function make_palindrome(string: string): string {
    let reversed = string.split("").reverse().join("");
    for(let i = string.length; i >= 0; i--) {
        if(string.substr(0, i) === reversed.substr(reversed.length - i)) {
            return string + reversed.substr(0, reversed.length - i);
        }
    }
    return "";
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
