function find_literals(text: string, pattern: string): [string, number, number] {
  const regex = new RegExp(pattern);
  const matches = text.match(regex);
  if (matches && matches.length > 0) {
    const match = matches[0];
    return [match, text.indexOf(match), text.indexOf(match) + match.length];
  } else {
    return ["", -1, -1];
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index.
