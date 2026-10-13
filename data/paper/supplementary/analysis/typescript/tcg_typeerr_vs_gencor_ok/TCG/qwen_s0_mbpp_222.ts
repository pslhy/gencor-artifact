function check_type(test_tuple: any): boolean { 
  return test_tuple
    .toString()
    .trim()
    .split(/\s*,\s*/)
    .every((e) => typeof e === typeof test_tuple);
}

// Test the code
let test_tuple = [1, '2', 3, 4, '5'];
let result = check_type(test_tuple);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all the elements in array have same data type or not.