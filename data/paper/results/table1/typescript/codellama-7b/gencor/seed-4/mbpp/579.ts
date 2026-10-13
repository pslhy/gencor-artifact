
function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
  const test_tup1_set = new Set(test_tup1.sort((a, b) => a - b).map(x => x));
  const test_tup2_set = new Set(test_tup2.sort((a, b) => a - b).map(x => x));
  let dissimilar_elements: number[] = [];
  for (const elem of test_tup1_set) {
    if (!test_tup2_set.has(elem)) dissimilar_elements.push(elem);
  }
  for (const elem of test_tup2_set) {
    if (!test_tup1_set.has(elem)) dissimilar_elements.push(elem);
  }
  return dissimilar_elements.sort((a, b) => a - b) as [number, number, number, number];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.
