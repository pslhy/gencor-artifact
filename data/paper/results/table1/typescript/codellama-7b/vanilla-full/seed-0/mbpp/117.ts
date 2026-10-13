function list_to_float(test_list: [string, string][]): [number, number][] {
  const float_list: [number, number][] = [];
  for (const sub_list of test_list) {
    const [left, right] = sub_list;
    float_list.push([parseFloat(left), parseFloat(right)]);
  }
  return float_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert all possible convertible elements in an array of arrays to floats.
