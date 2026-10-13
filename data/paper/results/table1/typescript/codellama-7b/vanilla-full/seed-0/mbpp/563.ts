function extract_values(text: string): string[] {
  const values = [];
  let current = '';
  let inside_quotes = false;
  
  for (const char of text) {
    if (char === '"') {
      inside_quotes = !inside_quotes;
    } else if (inside_quotes && char === ',') {
      values.push(current);
      current = '';
    } else if (!inside_quotes) {
      current += char;
    }
  }
  
  if (inside_quotes || current !== '') {
    values.push(current);
  }
  
  return values;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks from a string.
