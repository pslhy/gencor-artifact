
function occurance_substring(text: string, pattern: string): [string, number, number] | undefined {
  let result = text.indexOf(pattern);
  if (result == -1) {
    return undefined;
  }
  let start = result;
  let end = result + pattern.length - 1;
  return [text.substring(start, end), start, end];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the occurrence and position of the substrings within a string. Return undefined if there is no match.
