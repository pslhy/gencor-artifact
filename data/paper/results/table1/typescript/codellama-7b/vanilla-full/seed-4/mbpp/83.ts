function get_Char(strr: string): string {
  let result: string = "";

  for (let i: number = 0; i < str.length; i++) {
    var curr: string = str.charAt(i);
    var ascii: number = curr.charCodeAt(0);
    ascii = (ascii + 1) % 26;
    result += String.fromCharCode(ascii);
  }

  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26.
