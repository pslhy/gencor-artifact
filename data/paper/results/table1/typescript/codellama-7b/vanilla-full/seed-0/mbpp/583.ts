function catalan_number(num: number): number {
  if (num === 1) {
    return 1;
  }
  
  let result = 0;
  
  for (let i = 0; i < num; i++) {
    result += catalan_number(i) * catalan_number(num - i - 1);
  }
  
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which returns nth catalan number.
