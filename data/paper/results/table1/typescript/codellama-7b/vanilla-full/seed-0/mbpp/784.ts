function mul_even_odd(list1: number[]): number {
  const even = list1.filter((x, i) => i % 2 === 0);
  const odd = list1.filter((x, i) => i % 2 === 1);
  return even.reduce((a, b) => a * b, 1) * odd.reduce((a, b) => a * b, 1);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the product of first even and odd number of a given array.
