function maximize_elements(test_tup1: number[][], test_tup2: number[][]): number[][] {
  const test_tuple1 = new Array(test_tup1[0].length);
  const test_tuple2 = new Array(test_tup2[0].length);
  for (let i = 0; i < test_tuple1.length; i++) {
    test_tuple1[i] = test_tup1[0][i];
    test_tuple2[i] = test_tup2[0][i];
  }
  for (let i = 1; i < test_tup1.length; i++) {
    const new_val1 = test_tuple1[i] > test_tup1[i] ? test_tuple1[i] : test_tup1[i];
    const new_val2 = test_tuple2[i] > test_tup2[i] ? test_tuple2[i] : test_tup2[i];
    test_tuple1[i] = new_val1;
    test_tuple2[i] = new_val2;
  }
  return [test_tuple1, test_tuple2];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to maximize the given two arrays.
