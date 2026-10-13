function perfect_squares(a: number, b: number): number[] {
  const result: number[] = [];
  for (let i = a; i <= b; i++) {
    if (Math.sqrt(i) % 1 === 0) {
      result.push(i);
    }
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find perfect squares between two given numbers.
