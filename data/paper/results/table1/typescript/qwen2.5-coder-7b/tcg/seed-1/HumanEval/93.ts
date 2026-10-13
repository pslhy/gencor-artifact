function encode(message: string): string { 
    const vowels = 'aeiou';
    const shiftedVowels = 'ceikm';

    return message.split('').map(char => {
        if (char >= 'a' && char <= 'z') {
            char =='\ ' ? char.toUpperCase() : char.toLowerCase();
        } else if (char >= 'A' && char <= 'Z') {
            char =='\ ' ? char.toLowerCase() : char.toUpperCase();
        }

        const index = vowels.indexOf(char.toLowerCase());
        if (index !== -1) {
            char =='\ ' ? shiftedVowels[index].toUpperCase() : shiftedVowels[index].toLowerCase();
        }

        return char;
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