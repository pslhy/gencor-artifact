function reverse_Array_Upto_K(input: number[], k: number): number[] {
  if(input.length <= k) {
    throw new Error(`Input length (${input.length}}) must be greater than k (${k})`);
  }
  const reversed1 = input.slice(0, k).reverse();
  const reversed2 = input.slice(k).reverse();
  return reversed1.concat(reversed2);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse an array upto a given position.
