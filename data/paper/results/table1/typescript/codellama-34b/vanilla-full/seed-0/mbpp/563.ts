function extract_values(text: string): string[] {
  const values = [];
  let start = 0;
  while (start < text.length) {
    if (text[start] === '"') {
      start++;
      while (start < text.length && text[start] !== '"') {
        start++;
      }
      const value = text.substring(start, text.length + 1);
      values.push(value);
      start++;
    } else {
      start++;
    }
  }
  return values;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks from a string.
