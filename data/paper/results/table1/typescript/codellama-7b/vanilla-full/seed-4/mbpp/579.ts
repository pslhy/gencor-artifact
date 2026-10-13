function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
  const test_tup1_set = new Set(test_tup1);
  const test_tup2_set = new Set(test_tup2);
  return [...test_tup1_set].filter((x) => !test_tup2_set.has(x));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.
