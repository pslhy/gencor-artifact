function make_palindrome(string: string): string {
  let longest_palindrome_suffix = "";
  for (let i = string.length; i >= 0; i--) {
    const suffix = string.slice(0, i);
    if (suffix === suffix.split("").reverse().join("")) {
      longest_palindrome_suffix = suffix;
      break;
    }
  }
  return string + longest_palindrome_suffix.split("").reverse().join("");
}

console.log(make_palindrome("")); // ""
console.log(make_palindrome("cat")); // "catac"
console.log(make_palindrome("cata")); // "catac"


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
