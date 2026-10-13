function remove_Occ(s: string, ch: string): string { 
  let firstIndex = -1, lastIndex = -1;
  for (let i = 0; i < s.length; i++) {
    if (s[i] === ch) {
      if (firstIndex === -1) {
        firstIndex = i;
      } else {
        lastIndex = i;
      }
    }
  }
  if (firstIndex !== -1 && lastIndex !== -1) {
    s = s.substring(0, firstIndex) + s.substring(firstIndex + 1, lastIndex) + s.substring(lastIndex + 1);
  } else if (firstIndex !== -1) {
    s = s.substring(0, firstIndex) + s.substring(firstIndex + 1);
  }
  return s;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove first and last occurrence of a given character from the string.
