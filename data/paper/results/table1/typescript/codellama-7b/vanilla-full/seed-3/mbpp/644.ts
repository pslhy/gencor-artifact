function reverse_Array_Upto_K(input: number[], k: number): number[] {
  if(k < 0 || k >= input.length) {
    return [];
  } else {
    const result: number[] = [];
    for(let i = 0; i < k; i++) {
      result.push(input[k - i - 1]);
    }
    return result;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse an array upto a given position.
