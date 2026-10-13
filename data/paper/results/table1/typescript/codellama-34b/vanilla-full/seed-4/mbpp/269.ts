function ascii_value(k: string): number {
   if (k.length != 1) {
      throw new Error("Input should be a character");
   }
   return k.charCodeAt(0);
}
console.log(ascii_value("a")); // output: 97
console.log(ascii_value("A")); // output: 65


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the ascii value of a character.
