function max_Product(arr: number[]): [number, number] {
  const sorted = arr.sort((a, b) => a - b);
  return [sorted[sorted.length - 1], sorted[sorted.length - 2]];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find a pair with highest product from a given array of integers.
