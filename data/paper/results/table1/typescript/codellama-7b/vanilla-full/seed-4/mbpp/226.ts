function odd_values_string(str: string): string {
  const arr: string[] = str.split('');
  const res: string[] = [];
  for (let i = 0; i < arr.length; i++) {
    if (i % 2 === 0) {
      res.push(arr[i]);
    }
  }
  return res.join('');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove the characters which have odd index values of a given string.
