function get_ludic(n: number): number[] { 
  let ludics: number[] = [1];
  let next: number = 2;
  
  while (next <= n) {
    ludics.push(next);
    next = ludics[ludics.length - 1] + ludics[ludics.length - 2];
  }
  
  return ludics.filter(x => x <= n);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
