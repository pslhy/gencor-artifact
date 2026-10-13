function union_elements(test_tup1: number[], test_tup2: number[]): number[] {
  const test_tup1_set = new Set(test_tup1);
  const test_tup2_set = new Set(test_tup2);
  const union = test_tup1_set.union(test_tup2_set);
  const sorted_union = Array.from(union.values()).sort();
  return sorted_union;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the union of the elements of two given arrays and output them in sorted order.