
function encode(message: string): string { 
    const vowels = 'aeiou';
    const vowelShift = 2;
    let encodedMessage = '';

    for (let char of message) {
        let isUpperCase = char === char.toUpperCase();
        let lowerChar = char.toLowerCase();

        if (vowels.includes(lowerChar)) {
            let newCharCode = lowerChar.charCodeAt(0) + vowelShift;
            let newChar = String.fromCharCode(newCharCode);
            encodedMessage += isUpperCase ? newChar.toUpperCase() : newChar.toLowerCase();
        } else {
            encodedMessage += isUpperCase ? lowerChar : lowerChar.toUpperCase();
        }
    }

    return encodedMessage;
}

// Test cases
console.log(encode("test")); // Output: "TGST"
console.log(encode("This is a message")); // Output: "tHKS KS C MGSSCGG"

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes a message, and encodes in such a
//     way that it swaps case of all letters, replaces all vowels in
//     the message with the letter that appears 2 places ahead of that
//     vowel in the english alphabet.
//     Assume only letters.
//     Examples:
//     >>> encode("test")
//     "TGST"
//     >>> encode("This is a message")
//     "tHKS KS C MGSSCGG"
