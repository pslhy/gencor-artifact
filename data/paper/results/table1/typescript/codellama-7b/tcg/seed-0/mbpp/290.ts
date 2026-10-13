function max_length(list1: number[][]): [number, number[]] {
  const sizes = list1.map(x => x.length);
  const max = Math.max(...sizes);
  return [max, list1.filter(x => x.length === max)[0]];
}

const input: number[][] = [[1, 2, 3], [4, 5]];
const result = max_length(input);
result[1]; // [4, 5]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array of maximum length in an array of arrays.