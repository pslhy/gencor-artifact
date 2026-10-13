function max_length(list1: number[][]): [number, number[]] {
  const max = list1.reduce((max, list) => (list.length > max ? list.length : max), 0)
  const result = list1.reduce((result, list) => (list.length === max ? [...result, list] : result), [])
  return [max, result]
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array of maximum length in an array of arrays.
