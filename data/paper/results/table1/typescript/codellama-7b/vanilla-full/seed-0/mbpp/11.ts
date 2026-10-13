function remove_Occ(s: string, ch: string): string {
  const firstOcc = s.indexOf(ch);
  const lastOcc = s.lastIndexOf(ch);
  if (firstOcc === lastOcc) {
    return s.slice(0, firstOcc - 1) + s.slice(lastOcc + 1);
  } else {
    return s.slice(0, firstOcc) + s.slice(lastOcc);
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove first and last occurrence of a given character from the string.
