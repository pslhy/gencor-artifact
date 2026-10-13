function encode(message: string): string {
  let encodedMessage = "";

  for (let i = 0; i < message.length; i++) {
    let letter = message[i];
    let code = message.charCodeAt(i);

    if (code >= 65 && code <= 90) {
      // vowel
      if (letter === "a" || letter === "e" || letter === "i" || letter === "o" || letter === "u") {
        letter = String.fromCharCode(code + 2);
      }
    } else if (code >= 97 && code <= 122) {
      // vowel
      if (letter === "a" || letter === "e" || letter === "i" || letter === "o" || letter === "u") {
        letter = String.fromCharCode(code + 2);
      }
    }

    encodedMessage += letter.toUpperCase();
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
