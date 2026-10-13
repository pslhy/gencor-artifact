function reverse_delete(s: string, c: string): [string, boolean] {
    let result = '';
    for (let i = 0; i < s.length; i++) {
        if (!c.includes(s[i])) {
            result += s[i];
        }
    }
    let isPalindrome = result === result.split('').reverse().join('');
    return [result, isPalindrome];
}

console.log(reverse_delete("abcde", "ae")); // ["bcd", false]
console.log(reverse_delete("abcdef", "b")); // ["acdef", false]
console.log(reverse_delete("abcdedcba", "ab")); // ["cdedc", true]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Task
//     We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
//     then check if the result string is palindrome.
//     A string is called palindrome if it reads the same backward as forward.
//     You should return an array containing the result string and true/false for the check.
//     Example
//     >>> reverse_delete("abcde", "ae")
//     ["bcd", false]
//     >>> reverse_delete("abcdef", "b")
//     ["acdef", false]
//     >>> reverse_delete("abcdedcba", "ab")
//     ["cdedc", true]
