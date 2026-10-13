function tuple_str_int(test_str: string): [number, number, number] {
  const test_nums = test_str.split(',').map(s => +s);
  return [test_nums[0], test_nums[1], test_nums[2]];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert array string to integer array.
