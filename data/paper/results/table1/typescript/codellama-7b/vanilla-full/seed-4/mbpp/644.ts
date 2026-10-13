function reverse_Array_Upto_K(input: number[], k: number): number[] {
  if (k >= input.length) {
    return input;
  }
  let revArr = [];
  for (let i: number = k; i >= 0; i--) {
    revArr.push(input[i]);
  }
  return revArr;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse an array upto a given position.
