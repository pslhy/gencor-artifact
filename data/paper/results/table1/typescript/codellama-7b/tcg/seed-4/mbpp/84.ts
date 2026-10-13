function sequence(n: number): number {
  if (n === 1) {
    return 1;
  }
  if (n === 2) {
    return 1;
  }
  if (n > 2) {
    return sequence(n - 1) + sequence(n - 2);
  }
  throw new Error('Invalid input');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth number in the newman conway sequence.