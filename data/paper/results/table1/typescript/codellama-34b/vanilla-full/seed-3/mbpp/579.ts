function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
  let d1 = 0
  let d2 = 0
  let d3 = 0
  let d4 = 0

  if (test_tup1[0] !== test_tup2[0]) {
    d1 = 1
  }
  if (test_tup1[1] !== test_tup2[1]) {
    d2 = 1
  }
  if (test_tup1[2] !== test_tup2[2]) {
    d3 = 1
  }
  if (test_tup1[3] !== test_tup2[3]) {
    d4 = 1
  }

  return [d1, d2, d3, d4];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.
