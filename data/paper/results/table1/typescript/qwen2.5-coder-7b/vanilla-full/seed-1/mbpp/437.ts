function remove_odd(str1: string): string { 
  let result: string = ""; 

  for (let i = 0; i < str1.length; i += 2) { 
    result += str1[i]; 
  } 
  return result; 
} 

console.log(remove_odd("abcdef")); // "ace"
console.log(remove_odd("Number")); // "Nueo"
console.log(remove_odd("123456")); // "135"
console.log(remove_odd("JavaScript")); // "Jv Scrt"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove odd characters in a string.
