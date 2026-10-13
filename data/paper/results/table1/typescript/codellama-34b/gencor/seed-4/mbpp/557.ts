
function toggle_string(string: string): string {
   let result: string = "";
   for (let i: number = 0; i<string.length; i++) {
      if (string.charAt(i) >= 'A' && string.charAt(i) <= 'Z') {
         result += string.charAt(i).toLocaleLowerCase();
      } else {
         result += string.charAt(i).toLocaleUpperCase();
      }
   }
   return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to toggle the case of all characters in a string.
