function is_sublist(l: number[], s: number[]): boolean {
  for (let i = 0; i <= l.length - s.length; i++) {
    if (l.slice(i, i + s.length).every((x, j) => x === s[j])) {
      return true;
    }
  }
  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether an array contains the given subarray or not.
