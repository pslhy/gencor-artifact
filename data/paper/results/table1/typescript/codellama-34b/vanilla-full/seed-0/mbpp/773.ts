function occurance_substring(text: string, pattern: string): [string, number, number] | undefined {
  const position = text.indexOf(pattern);
  if (position === -1) return undefined;

  let count = 0;
  let index = 0;
  while (index < text.length) {
    if (text[index] === pattern[0]) {
      if (text.slice(index, index + pattern.length) === pattern) {
        count++;
        index += pattern.length;
      } else {
        index++;
      }
    } else {
      index++;
    }
  }

  return [pattern, count, position];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the occurrence and position of the substrings within a string. Return undefined if there is no match.
