function encrypt(s: string): string {
   const alphabetRotated = "abcdefghijklmnopqrstuvwxyz".substring(2) + "abcdefghijklmnopqrstuvwxyz".substring(0, 2);
   return s.replace(/[a-zA-Z]/g, c => alphabetRotated[c.charCodeAt(0) % 26]);
}


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