function remove_nested(test_tup: any): [number, number, number, number] {
  if (typeof test_tup !== 'object') {
    return [null, null, null, null]
  }

  var tuple: Array<any> = [null, null, null, null]

  for (var i = 0; i < test_tup.length; i++) {
    if (Array.isArray(test_tup[i])) {
      tuple[0] = test_tup[i]
      tuple[1] = test_tup[i][0]
      tuple[2] = test_tup[i][1]
      tuple[3] = test_tup[i][2]
      break;
    }
  }

  return tuple
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.
