function count_Substrings(s: string): number {
  const n = s.length;
  let count = 0;
  for (let i = 0; i < n; i++) {
    for (let j = i; j < n; j++) {
      const sum = s[i] + s[j];
      if (sum.toString().length === sum) count++;
    }
  }
  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of substrings with the sum of digits equal to their length.
