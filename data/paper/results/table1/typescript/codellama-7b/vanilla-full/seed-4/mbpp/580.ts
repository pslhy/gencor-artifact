function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any {
  if (test_tuple[2] instanceof Array) {
    return [test_tuple[0], test_tuple[1], extract_even(test_tuple[2]), test_tuple[3], test_tuple[4]];
  } else {
    if (test_tuple[2] % 2 === 0) {
      return [test_tuple[0], test_tuple[1], test_tuple[2], test_tuple[3], test_tuple[4]];
    } else {
      return [test_tuple[0], test_tuple[1], null, test_tuple[3], test_tuple[4]];
    }
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
