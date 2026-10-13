function count_occurance(s: string): number {
  const target = 'std';
  let count = 0;
  let i = 0;
  while (i < s.length) {
    if (s.substring(i, i + target.length) === target) {
      count++;
    }
    i++;
  }
  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of occurence of the string 'std' in a given string.
