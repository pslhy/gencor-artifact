function encode(message: string): string {
    let result = '';
    for(let i = 0; i < message.length; i++) {
        let charCode = message[i].charCodeAt(0);
        // check for alphabet
        if ((charCode >= 65 && charCode <= 90) || 
        (charCode >= 97 && charCode <= 122)) {
            // swap case
            if (charCode >= 65 && charCode <= 90) {
                result += String.fromCharCode(charCode + 32);
            } else {
                result += String.fromCharCode(charCode - 32);
            }
        
        // check for vowel
        } else if ("AEIOUaeiou".indexOf(message[i]) !== -1) {
            let vowel = message[i] == message[i].toUpperCase() ? 'A' : 'a';
            // find next vowel
            let newChar = String.fromCharCode(vowel.charCodeAt(0) + 2);
            result += newChar;
        } else {
            result += message[i];
        }
    }
    return result;
}


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
