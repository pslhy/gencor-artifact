function encrypt(s: string): string {
    let result = "";
    for (let i = 0; i < s.length; i++) {
        let c = s.charAt(i);
        if (c >= 'a' && c <= 'z') {
            c = String.fromCharCode(((c.charCodeAt(0) - 97 + 2 * 2) % 26) + 97);
        } else if (c >= 'A' && c <= 'Z') {
            c = String.fromCharCode(((c.charCodeAt(0) - 65 + 2 * 2) % 26) + 65);
        }
        result += c;
    }
    return result;
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
