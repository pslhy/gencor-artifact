function is_sublist(l: number[], s: number[]): boolean {
  const m = l.length;
  const n = s.length;
  if (m < n) {
    return false;
  }
  for (let i = 0; i <= m - n; i++) {
    let j;
    for (j = 0; j < n; j++) {
      if (l[i + j] !== s[j]) {
        break;
      }
    }
    if (j === n) {
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
