function sum_even_and_even_index(arr: number[]): number {
  const filtered = arr.filter((element, index) => {
    return element % 2 === 0 && index % 2 === 0;
  });
  return filtered.reduce((a, b) => a + b);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of even numbers at even positions of an array.
