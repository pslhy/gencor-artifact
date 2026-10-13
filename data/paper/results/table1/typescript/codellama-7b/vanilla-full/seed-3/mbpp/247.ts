function lps(str: string): number {
  if(str.length <= 1)
    return str.length;

  let maxLen = 0;
  for(let i = 0; i < str.length; i++){
    for(let j = i + 1; j < str.length; j++){
      if(str[i] === str[j]
        && (j - i < 2 || str[i + 1] !== str[j - 1])){
          maxLen = Math.max(maxLen, 2 + lps(str.substring(i + 2, j)));
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
