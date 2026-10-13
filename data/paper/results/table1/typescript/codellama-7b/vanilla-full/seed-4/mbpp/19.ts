function test_duplicate(arraynums: number[]): boolean {
  for (let i = 0; i < arraynums.length - 1; i++) {
    for (let j = i + 1; j < arraynums.length; j++) {
      if (arraynums[i] === arraynums[j]) {
        return true;
      }
    }
  }
  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find whether a given array of integers contains any duplicate element.
