function string_to_tuple(str1: string): string[] {
   let arr: string[] = new Array(0);
   for (let i = 0; i < str1.length; i++) {
       arr.push(str1.charAt(i));
   }
   return arr;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert a given string to an array of characters.
