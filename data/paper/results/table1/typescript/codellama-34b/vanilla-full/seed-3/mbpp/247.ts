function lps(str: string): number {
  if (str.length <= 1) return str.length;

  let maxLen = 0;
  for (let i = 0; i < str.length; i++) {
    let len = 0;
    for (let j = i + 1; j < str.length; j++) {
      if (str[i] === str[j]) {
        len += 1;
        if (len >= maxLen) {
          maxLen = len;
        }
      }
    }
  }

  return maxLen;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the length of the longest palindromic subsequence in the given string.
