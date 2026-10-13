function ascii_value(k: string): number {
  if (k.length != 1) {
    throw new Error("k should be a length 1 string");
  }
  var c: number = k.charCodeAt(0);
  return c;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the ascii value of a character.
