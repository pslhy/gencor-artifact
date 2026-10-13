function remove_Occ(s: string, ch: string): string {
   if (s.length <= 1) {
      return s;
   }
   let i = s.indexOf(ch);
   let j = s.lastIndexOf(ch);
   if (i == j && i == 0) {
      return s.substring(1);
   } else if (i == j && i == s.length - 1) {
      return s.substring(0, s.length - 1);
   } else if (i == 0) {
      return s.substring(1, j);
   } else if (j == s.length - 1) {
      return s.substring(0, i);
   } else {
      return s.substring(0, i) + s.substring(j + 1);
   }
}

// example usage:
let str = "Hello, World!";
console.log(remove_Occ(str, "H")); // Output: "ello, World!"
console.log(remove_Occ(str, "!")); // Output: "Hello, World"
console.log(remove_Occ(str, "l")); // Output: "Heo, World!"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove first and last occurrence of a given character from the string.
