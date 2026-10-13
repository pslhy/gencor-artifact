function extract_string(str: string[], l: number): string[] {
  const res = Array<string>();
  for (const s of str) {
    res.push(s.substring(0, Math.min(s.length, l)));
  }
  return res;
}

export { extract_string };


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract specified size of strings from a given array of string values.
