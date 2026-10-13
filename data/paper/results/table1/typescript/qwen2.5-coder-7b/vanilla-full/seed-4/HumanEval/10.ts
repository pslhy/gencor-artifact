function make_palindrome(string: string): string { 
    for (let i = string.length; i >= 0; i--) {
        if (is_palindrome(string.substring(i))) {
            return string + string.substring(0, i).split('').reverse().join('');
        }
    }
    return string;
}

function is_palindrome(substring: string): boolean {
    return substring === substring.split('').reverse().join('');
}

// Test cases from the problem statement
console.log(make_palindrome("")); // Output: ""
console.log(make_palindrome("cat")); // Output: "catac"
console.log(make_palindrome("cata")); // Output: "catac"


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
