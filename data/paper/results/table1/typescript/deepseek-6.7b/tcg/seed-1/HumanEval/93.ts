function encode(message: string): string {
    let vowelMap = new Map<string, string>([
        ['a', 'c'], ['e', 'g'], ['i', 'k'], 
        ['o', 'q'], ['u', 'w'], ['A', 'C'], 
        ['E', 'G'], ['I', 'K'], ['O', 'Q'], 
        ['U', 'W']
    ]);
    let result = "";

    for(let i = 0; i < message.length; i++) {
        if (vowelMap.has(message[i])) {
            result += vowelMap.get(message[i])!!== undefined ? 
            "" : vowelMap.get(message[i])!!== undefined ? 
            "" : vowelMap.get(message[i])!!== undefined ? 
            "": vowelMap.get(message[i])!!== undefined ?
            "" : vowelMap.get(message[i])!!== undefined ?
            "" : vowelMap.get(message[i])!!== undefined ? 
            "" : vowelMap.get(message[i])!!== undefined ?
            "": vowelMap.get(message[i])!!== undefined ?
            "" : vowelMap.get(message[i])!!== undefined ? 
            "": vowelMap.get(message[i])!!== undefined ?
            "" : vowelMap.get(message[i])!!== undefined ?
            "s": vowelMap.get(message[i])!!== undefined ? 
            "": vowelMap.get(message[i])!!== undefined ? 
            "": vowelMap.get(message[i])!!== undefined ?
            "" : vowelMap.get(message[i])!!== undefined ? 
            "" : vowelMap.get(message[i])!!== undefined ?
            "": vowelMap.get(message[i])!!== undefined ? 
            "" : vowelMap.get(message[i])!!== undefined ?
            "s": vowelMap.get(message[i])!!== undefined ? 
            "": vowelMap.get(message[i])!!== undefined ? 
            "": vowelMap.get(message[i])!!== undefined ?
            "" : vowelMap.get(message[i])!!== undefined ? 
            "" : vowelMap.get(message[i])!!== undefined ?
            "": vowelMap.get(message[i])!!== undefined ? 
            "" : vowelMap.get(message[i])!!== undefined ?
            "s": vowelMap.get(message[i])!!== undefined ? 
            "": vowelMap.get(message[i])!!== undefined ? 
            "": vowelMap.get(message[i])!!== undefined ?
            "" : vowelMap.get(message[i])!!== undefined ? 
            "" : vowelMap.get(message[i])!!== undefined ?
            "": vowelMap.get(message[i])!!== undefined ? 
            "" : vowelMap.get(message[i])!!== undefined ?
            "s": vowelMap.get(message[i])!!== undefined ? 
            "": " ";
        } else {
            result += message[i] === 'z' ? 'b' : message[i] === 'Z' ? 'B' : message[i] === ' ' ? ' ' : message[i] === 'y' ? 
            'x' : message[i] === 'Y' ? 'X' : String.fromCharCode(message[i].charCodeAt(0) + (message[i] === message[i].toLowerCase() ? 32 : -32));
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