function check_char(string: string): string {
  if (string.charAt(0) === string.charAt(string.length - 1)) {
    return "true";
  } else {
    return "false";
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given string starts and ends with the same character or not.
