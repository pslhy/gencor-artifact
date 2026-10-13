function reverse_Array_Upto_K(input: number[], k: number): number[] {
  const result = Array(input.length);
  let j = input.length - 1;

  for (let i = 0; i < k; i++) {
    result[j--] = input[i];
  }

  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse an array upto a given position.
