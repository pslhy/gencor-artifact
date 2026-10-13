function toggle_string(string: string): string {
  return string.split("").map(char => {
    if (char.toLowerCase() === char) {
      return char.toUpperCase();
    } else {
      return char.toLowerCase();
    }
  }).join("");
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to toggle the case of all characters in a string.
