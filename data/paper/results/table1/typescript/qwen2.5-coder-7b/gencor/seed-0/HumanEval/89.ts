
function encrypt(s: string): string { 
    let result = '';
    for (let char of s) {
        let code = char.charCodeAt(0);
        if (code >= 97 && code <= 122) { // lowercase letters
            result += String.fromCharCode((code - 97 + 4 * 2) % 26 + 97);
        } else if (code >= 65 && code <= 90) { // uppercase letters
            result += String.fromCharCode((code - 65 + 4 * 2) % 26 + 65);
        } else {
            result += char;
        }
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
