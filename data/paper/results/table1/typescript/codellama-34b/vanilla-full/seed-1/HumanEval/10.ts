function make_palindrome(string: string): string {
  const reversedString = string.split('').reverse().join('');
  const longestPalindrome = findLongestPalindrome(string);
  return string.slice(0, longestPalindrome.length) + reversedString.slice(longestPalindrome.length);
}

function findLongestPalindrome(string: string): string {
  const reversedString = string.split('').reverse().join('');
  const suffixes = getSuffixes(reversedString);
  const prefixes = getPrefixes(string);
  let longestPalindrome = '';
  for (const suffix of suffixes) {
    for (const prefix of prefixes) {
      if (suffix === prefix.split('').reverse().join('')) {
        longestPalindrome = prefix;
      }
    }
  }
  return longestPalindrome;
}

function getSuffixes(string: string): string[] {
  const suffixes: string[] = [];
  for (let i = 0; i < string.length; i++) {
    suffixes.push(string.slice(i));
  }
  return suffixes;
}

function getPrefixes(string: string): string[] {
  const prefixes: string[] = [];
  for (let i = 0; i < string.length; i++) {
    prefixes.push(string.slice(0, i));
  }
  return prefixes;
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
