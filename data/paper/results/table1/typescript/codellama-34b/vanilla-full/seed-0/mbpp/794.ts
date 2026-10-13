function text_starta_endb(text: string): boolean {
  const regex = /a.*b$/;
  return regex.test(text);
}

console.log(text_starta_endb("abc")); // true
console.log(text_starta_endb("a_b")); // true
console.log(text_starta_endb("ab")); // true
console.log(text_starta_endb("a")); // false
console.log(text_starta_endb("b")); // false
console.log(text_starta_endb("c")); // false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'.
