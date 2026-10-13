function text_starta_endb(text: string): boolean {
   if (text.startsWith('a') && text.endsWith('b')) {
       return true;
   } else {
       return false;
   }
}
console.log(text_starta_endb("ab")); // true
console.log(text_starta_endb("aab")); // true
console.log(text_starta_endb("abc")); // false
console.log(text_starta_endb("a")); // false
console.log(text_starta_endb("b")); // false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'.
