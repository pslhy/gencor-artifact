function encrypt(s: string): string { 
    const shift: number = 2 * 2;
    let result: string = "";

    for (let char of s) {
        if (char >= 'a' && char <= 'z') {
            result += String.fromCharCode(((char.charCodeAt(0) - 'a'.charCodeAt(0) + shift) % 26) + 'a'.charCodeAt(0));
        } else if (char >= 'A' && char <= 'Z') {
            result += String.fromCharCode(((char.charCodeAt(0) - 'A'.charCodeAt(0) + shift) % 26) + 'A'.charCodeAt(0));
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