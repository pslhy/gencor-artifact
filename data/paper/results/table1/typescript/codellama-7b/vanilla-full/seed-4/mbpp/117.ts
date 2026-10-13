function list_to_float(test_list: [string, string][]): [number, number][] {
  const float_list: [number, number][] = [];
  for (let i = 0; i < test_list.length; i++) {
    const element = test_list[i];
    if (element.length == 2 && !isNaN(element[0]) && !isNaN(element[1])) {
      float_list.push(element.map(parseFloat));
    }
  }
  return float_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert all possible convertible elements in an array of arrays to floats.
