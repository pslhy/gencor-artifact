function encode(message: string): string {
    const vowels = 'aeiouAEIOU';
    return message.split('').map(char => {
        if (char.match(/[a-z]/)) {
            return vowels.includes(char) ? String.fromCharCode(char.charCodeAt(0) + 2) : char.toUpperCase();
        } else if (char.match(/[A-Z]/)) {
            return vowels.includes(char) ? String.fromCharCode(char.charCodeAt(0) + 2) : char.toLowerCase();
        } else {
            return char;
        }
    }).join('');
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
