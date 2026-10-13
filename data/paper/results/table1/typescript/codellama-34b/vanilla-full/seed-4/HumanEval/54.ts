function same_chars(s0: string, s1: string): boolean {
   if (s0.length !== s1.length) {
       return false;
   }
   const counts = new Map<string, number>();
   for (const c of s0) {
       counts.set(c, (counts.get(c) || 0) + 1);
   }
   for (const c of s1) {
       const count = counts.get(c);
       if (!count) {
           return false;
       }
       counts.set(c, count - 1);
   }
   return true;
}

console.log(same_chars("eabcdzzzz", "dddzzzzzzzddeddabc")); // true
console.log(same_chars("abcd", "dddddddabc")); // true
console.log(same_chars("dddddddabc", "abcd")); // true
console.log(same_chars("eabcd", "dddddddabc")); // false
console.log(same_chars("abcd", "dddddddabce")); // false
console.log(same_chars("eabcdzzzz", "dddzzzzzzzddddabc")); // false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Check if two words have the same characters.
//     >>> same_chars("eabcdzzzz", "dddzzzzzzzddeddabc")
//     true
//     >>> same_chars("abcd", "dddddddabc")
//     true
//     >>> same_chars("dddddddabc", "abcd")
//     true
//     >>> same_chars("eabcd", "dddddddabc")
//     false
//     >>> same_chars("abcd", "dddddddabce")
//     false
//     >>> same_chars("eabcdzzzz", "dddzzzzzzzddddabc")
//     false
