function make_palindrome(string: string): string {
  const reverse = (s: string): string => s.split("").reverse().join("");
  
  let longest_palindrome_prefix = "";
  for (let i = 0; i < string.length; i++) {
    const suffix = string.slice(i);
    if (suffix === reverse(suffix)) {
      longest_palindrome_prefix = suffix;
      break;
    }
  }
  
  let palindrome = string + reverse(longest_palindrome_prefix);
  return palindrome;
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
