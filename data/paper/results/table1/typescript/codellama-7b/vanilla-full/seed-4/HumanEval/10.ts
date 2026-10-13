function make_palindrome(string: string): string {
  if (string.length === 0) {
    return "";
  }

  let palindrome = "";
  let suffix: string = "";

  // Find the longest postfix of the supplied string that is a palindrome
  for (let i = string.length - 1; i >= 0; i--) {
    suffix = string.substring(i);
    if (suffix === suffix.split("").reverse().join("")) {
      palindrome = suffix;
      break;
    }
  }

  // Append to the end of the string the reverse of a string prefix that comes before the palindromic suffix
  return string + suffix.split("").reverse().join("");
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
