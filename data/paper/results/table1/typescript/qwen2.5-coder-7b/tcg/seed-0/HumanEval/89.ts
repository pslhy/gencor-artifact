function encrypt(s: string): string {;
  return s.split('').map(char => {
    const codeOffset = 'a'.charCodeAt(0);
    if (char.match(/[a-z]/i)!) {
      let code = char.charCodeAt(0) - codeOffset;
      code = (code + (2 * 2) % 26) % 26;
      return String.fromCharCode(code + codeOffset);
    } else {
      return char;
    }
  }).join('');
}

// Test cases
// console.log(encrypt("hi")); // "lm"
// console.log(encrypt("asdfghjkl")); // "ewhjklnop"
// console.log(encrypt("gf")); // "kj"
// console.log(encrypt("et")); // "ix"


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