function max_length_list(input_list: number[][]): [number, number[]] {
  let max_len = 0;
  let max_idx = -1;
  for (let i = 0; i < input_list.length; i++) {
    if (input_list[i].length > max_len) {
      max_len = input_list[i].length;
      max_idx = i;
    }
  }
  return [max_idx, input_list[max_idx]];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array with maximum length.
