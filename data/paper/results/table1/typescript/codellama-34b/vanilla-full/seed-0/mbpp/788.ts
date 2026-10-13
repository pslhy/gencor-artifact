function new_tuple(test_list: string[], test_str: string): [string, string, string] {
  const tuple = Array<string>();
  for (const item of test_list) {
    if (item !== test_str) {
      tuple.push(item);
    }
  }
  return tuple;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create a new array from the given string and array.
