function replace_char(str1: string, ch: string, newch: string): string {
  let newstr = "";

  for (let i = 0; i < str1.length; i++) {
    if (str1[i] === ch) {
      newstr += newch;
    } else {
      newstr += str1[i];
    }
  }

  return newstr;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to replace characters in a string.
