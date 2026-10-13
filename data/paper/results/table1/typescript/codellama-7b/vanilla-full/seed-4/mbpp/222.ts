function check_type(test_tuple: any): boolean {
  if (test_tuple.length === 0) {
    return true;
  }
  let type = typeof test_tuple[0];

  for (let index = 1; index < test_tuple.length; index++) {
    if (typeof test_tuple[index] !== type) {
      return false;
    }
  }

  return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all the elements in array have same data type or not.
