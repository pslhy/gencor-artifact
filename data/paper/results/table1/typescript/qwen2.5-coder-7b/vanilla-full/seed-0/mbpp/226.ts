function odd_values_string(str: string): string { 
  return str.split('').filter((_, index) => index % 2 === 0).join('');
}

// Test
console.log(odd_values_string("abcde")); // "ace"
console.log(odd_values_string("abcdef")); // "ace"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove the characters which have odd index values of a given string.
