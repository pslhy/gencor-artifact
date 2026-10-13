
function encrypt(s: string): string { // Function that takes in a string as a parameter
    let encryptedStr = ""; // Variable to hold the encrypted string
    for (let char of s) { // Loop through the string
        if (/[a-zA-Z]/.test(char)) { // Check if the character is a letter
            let base = char === char.toUpperCase() ? 'A'.charCodeAt(0) : 'a'.charCodeAt(0);
            let rotatedCharCode = ((char.charCodeAt(0) - base + 2 * 2) % 26) + base;
            encryptedStr += String.fromCharCode(rotatedCharCode); // Append the rotated character to the encrypted string
        } else {
            encryptedStr += char; // If character is not a letter, append it as it is
        }
    }
    return encryptedStr; // Return the encrypted string
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
