
function is_palindrome(text: string): boolean { 
    return text === text.split('').reverse().join('');
}

// Test cases
console.log(is_palindrome("")); // Expected true
console.log(is_palindrome("aba")); // Expected true
console.log(is_palindrome("aaaaa")); // Expected true
console.log(is_palindrome("zbcd")); // Expected false

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
