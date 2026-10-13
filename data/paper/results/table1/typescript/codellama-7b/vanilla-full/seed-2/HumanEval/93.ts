function encode(message: string): string {
  let output = "";
  for (let i = 0; i < message.length; i++) {
    let character = message.charAt(i);
    if (isLowercaseLetter(character)) {
      output += uppercaseLetter(character);
    } else if (isUppercaseLetter(character)) {
      output += lowercaseLetter(character);
    } else {
      output += character;
    }
  }
  return output;
}

function isLowercaseLetter(character: string): boolean {
  return character.charCodeAt(0) >= 97 && character.charCodeAt(0) <= 122;
}

function isUppercaseLetter(character: string): boolean {
  return character.charCodeAt(0) >= 65 && character.charCodeAt(0) <= 90;
}

function uppercaseLetter(character: string): string {
  return String.fromCharCode(character.charCodeAt(0) - 32);
}

function lowercaseLetter(character: string): string {
  return String.fromCharCode(character.charCodeAt(0) + 32);
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
