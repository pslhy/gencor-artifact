function check_char(string: string): string {
  if(string.length <= 1){
    return character
  }
  let first_char = string.charAt(0);
  let last_char = string.charAt(string.length - 1);
  if(first_char === last_char){
    return first_char + last_char;
  }
  return null;
}

// Example usage: 
console.log(check_char("test")); // Returns "ts"
console.log(check_char("hello")); // Returns null


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given string starts and ends with the same character or not.
