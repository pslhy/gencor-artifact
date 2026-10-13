function remove_Occ(s: string, ch: string): string {
  const idx = s.indexOf(ch);
  let newS = s;
  if (idx >= 0) {
    newS = s.slice(idx + 1);
  }
  const idxLast = s.lastIndexOf(ch);
  if (idxLast >= 0) {
    newS = s.slice(0, idxLast);
  }
  return newS;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove first and last occurrence of a given character from the string.
