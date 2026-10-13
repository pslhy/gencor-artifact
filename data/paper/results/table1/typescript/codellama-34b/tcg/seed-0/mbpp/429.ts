function and_tuples(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
  const tup1_array = Array.from(test_tup1[0].toString() + test_tup1[1].toString() + test_tup1[2].toString() + test_tup1[3].toString());
  const tup2_array = Array.from(test_tup2[0].toString() + test_tup2[1].toString() + test_tup2[2].toString() + test_tup2[3].toString());
  const and_array = tup1_array.filter((element) => tup2_array.includes(element));
  return [and_array[0], and_array[1], and_array[2], and_array[


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the elementwise and arrays from the given two arrays.