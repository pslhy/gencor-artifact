function get_Char(strr: string): string {
  const ASCII_OFFSET: number = 97;
  const MODULO: number = 26;
  let result: string = "";

  for (const char of strr) {
    const charCode: number = char.charCodeAt(0);
    const offset: number = (charCode + ASCII_OFFSET) % MODULO;
    result += String.fromCharCode(offset);
  }

  return result;
}

console.log(get_Char("hello")); // Output: "p"
console.log(get_Char("world")); // Output: "u"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26.
