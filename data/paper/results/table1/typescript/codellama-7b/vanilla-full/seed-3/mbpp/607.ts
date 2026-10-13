function find_literals(text: string, pattern: string): [string, number, number] {
  const regex = new RegExp(pattern, 'g');
  const matches = text.matchAll(regex);

  let match: RegExpExecArray | null;
  let start = 0;
  let end = 0;
  let literal = '';

  while ((match = matches.next().value) !== null) {
    start = match.index;
    end = start + match[0].length;
    literal = match[0];
    break;
  }

  return [literal, start, end];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index.
