
function remove_nested(test_tup: any): [number, number, number, number] {
  if(test_tup[0] == test_tup[1] && test_tup[2] == test_tup[3]) {
    test_tup.splice(0, 4);
    return test_tup;
  }
  else if (test_tup[0] == test_tup[2] && test_tup[1] == test_tup[3]) {
    test_tup.splice(0, 4);
    return test_tup;
  }
  else if (test_tup[0] == test_tup[3] && test_tup[1] == test_tup[2]) {
    test_tup.splice(0, 4);
    return test_tup;
  }
  else {
    return test_tup;
  };
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.
