function encode(message: string): string {
  const vowels = ["a", "e", "i", "o", "u"];
  const encoded: Array<string> = [];
  for (let i = 0; i < message.length; i++) {
    const char = message[i];
    if (char.toLowerCase() in vowels) {
      const newChar = String.fromCharCode(char.charCodeAt(0) + 2);
      encoded.push(newChar.toUpperCase());
    } else {
      encoded.push(char.toUpperCase() === char ? char.toLowerCase() : char.toUpperCase());
    }
  }
  return encoded.join("");
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
