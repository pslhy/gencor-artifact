function make_palindrome(string: string): string {
  if (string.length === 0) {
    return "";
  }

  const is_palindrome = (s: string): boolean => {
    return s === s.split("").reverse().join("");
  };

  const postfix = [];
  for (let i = 0; i < string.length; i++) {
    const substr = string.substring(i, string.length);
    if (is_palindrome(substr)) {
      postfix.push(substr);
    } else {
      break;
    }
  }

  const prefix = postfix.pop()!.split("").reverse().join("");

  return string + prefix;
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