function make_palindrome(string: string): string {
    let len = string.length;
    for (let i = len; i >= 0; i--) {
        if (is_palindrome(string, i)) {
            return string + reverse_string(string, 0, i - 1);
        }
    }
    return string;
}

function is_palindrome(string: string, length: number): boolean {
    for (let i = 0; i < length / 2; i++) {
        if (string[i] !== string[length - i - 1]) {
            return false;
        }
    }
    return true;
}

function reverse_string(string: string, start: number, end: number): string {
    let result = "";
    for (let i = end; i >= start; i--) {
        result += string[i];
    }
    return result;
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
