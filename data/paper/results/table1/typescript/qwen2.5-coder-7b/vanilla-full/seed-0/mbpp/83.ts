function get_Char(strr: string): string { 
  let size = strr.length; 
  let sum = 0; 
  
  for (let i = 0; i < size; i++) { 
    sum = sum + (strr.charCodeAt(i) - 97); 
  } 
  
  let res = (sum % 26) + 97; 
  
  return String.fromCharCode(res); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26.
