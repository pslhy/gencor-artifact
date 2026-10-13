function occurance_substring(text: string, pattern: string): [string, number, number] | undefined {
  let result = [];
  while (true) {
    const index = text.indexOf(pattern);
    if (index === -1) {
      break;
    }
    const lastIndex = index + pattern.length;
    result.push([pattern, index, lastIndex]);
    text = text.slice(lastIndex);
  }
  if (result.length === 0) {
    return undefined;
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the occurrence and position of the substrings within a string. Return undefined if there is no match.
