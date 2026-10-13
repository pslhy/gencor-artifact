function list_to_float(test_list: [string, string][]): [number, number][] {
  return test_list
    .map(([e1, e2]) => {
      const e1_num = parseFloat(e1);
      const e2_num = parseFloat(e2);
      if (e1_num && e2_num) {
        return [e1_num, e2_num] as [number, number];
      }
      return null;
    })
    .filter((item) => item !== null);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert all possible convertible elements in an array of arrays to floats.
