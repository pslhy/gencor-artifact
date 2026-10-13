function remove_lowercase(str1: string): string { 
  return str1.replace(/[a-z]/g, "");
}

console.log(remove_lowercase("The Quick Brow Fox"));
console.log(remove_lowercase("jumps Over the lazy dog"));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove lowercase substrings from a given string.
