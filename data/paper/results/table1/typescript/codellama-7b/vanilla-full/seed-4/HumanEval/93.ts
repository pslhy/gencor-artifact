function encode(message: string): string {
  let encodedMessage = "";

  for (let i = 0; i < message.length; i++) {
    let character = message[i];

    if (character.match(/[a-z]/i)) {
      // If character is a lowercase letter, swap it with
      // the uppercase equivalent.
      character = character.toUpperCase();
    } else {
      // If character is an uppercase letter, swap it with
      // the lowercase equivalent.
      character = character.toLowerCase();
    }

    // Replace all vowels in the encoded message with the
    // letter that appears 2 places ahead of that vowel in
    // the english alphabet.
    if (
      character === "A" ||
      character === "E" ||
      character === "I" ||
      character === "O" ||
      character === "U" ||
      character === "Y"
    ) {
      // Get the next two characters in the message.
      let nextCharacter = message[i + 1];
      let nextNextCharacter = message[i + 2];

      // Replace the current character with the next character
      // in the english alphabet.
      character = nextCharacter;

      // If the current character is a letter, also replace
      // the next character with the next next character.
      if (character.match(/[a-z]/i)) {
        nextCharacter = nextNextCharacter;
      }
    }

    encodedMessage += character;
  }

  return encodedMessage;
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
