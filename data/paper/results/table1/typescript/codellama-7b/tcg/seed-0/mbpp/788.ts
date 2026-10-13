function new_tuple(test_list: string[], test_str: string): [string, string, string] {
  const tuple = [test_list[0], test_str, test_list[1]];
  return tuple as [string, string, string];
}

const test_list = ['a', 'b'];
const test_str = 'c';
const result = new_tuple(test_list, test_str);

// Output: ['a', 'c', 'b']


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create a new array from the given string and array.