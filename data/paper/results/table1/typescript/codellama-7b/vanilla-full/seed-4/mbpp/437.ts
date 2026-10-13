function remove_odd(str1: string): string {
  const arr: Array<string> = str1.split('');
  const res: string[] = [];
  for (const char of arr) {
    if (char.length % 2 === 0) {
      res.push(char);
    }
  }
  return res.join('');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove odd characters in a string.
