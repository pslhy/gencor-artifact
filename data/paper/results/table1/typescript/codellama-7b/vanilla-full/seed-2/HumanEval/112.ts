function reverse_delete(s: string, c: string): [string, boolean] {
  let result = '';
  for (let i = 0; i < s.length; i++) {
    if (c.indexOf(s[i]) === -1) {
      result += s[i];
    }
  }
  return [result, isPalindrome(result)];
}

function isPalindrome(s: string): boolean {
  return s.split('').reverse().join('') === s;
}


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
