function max_length_list(input_list: number[][]): [number, number[]] {
  const max_length: number = Math.max(...input_list.map(i => i.length));
  const max_length_list_idx: number = input_list.findIndex(i => i.length === max_length);
  return [max_length, input_list[max_length_list_idx]];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array with maximum length.