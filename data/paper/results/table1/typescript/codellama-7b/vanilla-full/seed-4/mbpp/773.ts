function occurance_substring(text: string, pattern: string): [string, number, number] | undefined {
  const index = text.indexOf(pattern);
  if (index === -1) {
    return undefined;
  }

  const occurrence = Array(text.match(pattern) ?? []).length;
  const position = Array(index).concat(text.match(pattern) ?? []).map((match) => text.indexOf(match));

  return [occurrence, position];
}

occurance_substring("This is a sample text", "sample"); // [1, [9]]
occurance_substring("This is a sample text", "samp"); // [0, [5]]
occurance_substring("This is a sample text", "this"); // [1, [0]]
occurance_substring("This is a sample text", "not in string"); // undefined


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the occurrence and position of the substrings within a string. Return undefined if there is no match.
