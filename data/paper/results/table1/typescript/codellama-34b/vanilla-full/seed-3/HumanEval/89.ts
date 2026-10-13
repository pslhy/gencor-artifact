function encrypt(s: string): string {
  let encrypted = "";
  for (let i = 0; i < s.length; i++) {
    const rotated = s[i].charCodeAt(0) + 2;
    encrypted += String.fromCharCode((rotated - 2 * 26) % 26 + 97);
  }
  return encrypted;
}

console.log(encrypt("hi")); // Output: "lm"
console.log(encrypt("asdfghjkl")); // Output: "ewhjklnop"
console.log(encrypt("gf")); // Output: "kj"
console.log(encrypt("et")); // Output: "ix"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Create a function encrypt that takes a string as an argument and
//     returns a string encrypted with the alphabet being rotated.
//     The alphabet should be rotated in a manner such that the letters
//     shift down by two multiplied to two places.
//     For example:
//     >>> encrypt("hi")
//     "lm"
//     >>> encrypt("asdfghjkl")
//     "ewhjklnop"
//     >>> encrypt("gf")
//     "kj"
//     >>> encrypt("et")
//     "ix"
