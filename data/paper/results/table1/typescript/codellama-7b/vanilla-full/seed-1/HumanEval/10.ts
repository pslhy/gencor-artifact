function make_palindrome(string: string): string {
  let longest_postfix = GetLongestPostfix(string, true);
  let prefix = string.substring(0, string.length - longest_postfix.length);
  return string + prefix.split("").reverse().join("");
}

function GetLongestPostfix(string: string, is_palindrome: boolean): string {
  if (is_palindrome) {
    return string;
  }
  for (let i = string.length - 1; i >= 0; i--) {
    if (IsPalindrome(string.substring(i))) {
      return string.substring(i);
    }
  }
  return "";
}

function IsPalindrome(string: string): boolean {
  for (let i = 0; i < string.length / 2; i++) {
    if (string[i] !== string[string.length - i - 1]) {
      return false;
    }
  }
  return true;
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
