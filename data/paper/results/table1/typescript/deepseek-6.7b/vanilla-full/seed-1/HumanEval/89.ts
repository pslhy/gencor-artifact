function encrypt(s: string): string {
    let encrypted = '';
    for (let i = 0; i < s.length; i++) {
        let charCode = s.charCodeAt(i);
        if ((charCode >= 65 && charCode <= 90) || 
            (charCode >= 97 && charCode <= 122)) {
            encrypted += String.fromCharCode(charCode + 2 * 2);
        } else {
            encrypted += s[i];
        }
    }
    return encrypted;
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
