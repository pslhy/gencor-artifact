function make_palindrome(string: string): string {
    let len = string.length;

    if (len < 2) return string;

    let suffix = string;
    let prefix = '';
    let palindrome = '';

    while (suffix.length > 0) {
        if (isPalindrome(suffix)) {
            palindrome = string + prefix.split('').reverse().join('');
            break;
        }
        suffix = suffix.substr(1);
        prefix += suffix[0];
    }

    return palindrome;
}

function isPalindrome(s: string): boolean {
    return s === s.split('').reverse().join('');
}

console.log(make_palindrome(""));   // ""
console.log(make_palindrome("cat"));   // "catac"
console.log(make_palindrome("cata"));  // "catac"


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
