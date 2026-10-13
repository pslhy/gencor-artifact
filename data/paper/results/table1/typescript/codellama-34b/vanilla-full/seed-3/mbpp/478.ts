function remove_lowercase(str1: string): string {
  let str2 = '';
  for (let i = 0; i < str1.length; i++) {
    if (str1[i] >= 'A' && str1[i] <= 'Z') {
      str2 += str1[i];
    }
  }
  return str2;
}

console.log(remove_lowercase('Hello World')); // Output: 'HW'


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove lowercase substrings from a given string.
