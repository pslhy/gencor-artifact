function capital_words_spaces(str1: string): string {
  let res = "";
  for (let i = 0; i < str1.length; i++) {
    if(str1[i] !== " " && str1[i] !== ")" && str1[i] !== "(" && i != 0 && str1[i].toUpperCase() === str1[i] && str1[i-1].toLowerCase() !== str1[i-1] && str1[i-1] !== " ") {
      res += " ";
    }
    res += str1[i];
  }
  return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to put spaces between words starting with capital letters in a given string.