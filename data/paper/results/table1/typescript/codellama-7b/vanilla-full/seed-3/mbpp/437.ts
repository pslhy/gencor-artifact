function remove_odd(str1: string): string {
  let str2: string = "";
  for(let character of str1) {
    if(character.charCodeAt(0) % 2 !== 0) {
      str2 += character;
    }
  }
  return str2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove odd characters in a string.
