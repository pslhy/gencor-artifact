function replace_char(str1: string, ch: string, newch: string): string {
  let res = str1;
  for (let i = 0; i < str1.length; i++) {
    if (str1.charAt(i) == ch) {
      res = res.replace(ch, newch);
    }
  }
  return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to replace characters in a string.
