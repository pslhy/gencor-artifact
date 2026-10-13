function new_tuple(test_list: string[], test_str: string): [string, string, string] {
  if(test_list.length > 5){
     test_list.slice(0,5); // trim to 5 elements
  }
  return [test_str, ...test_list]
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create a new array from the given string and array.
