function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
  const tup1_set: Set<number> = new Set(test_tup1 as number[]);
  const tup2_set: Set<number> = new Set(test_tup2 as number[]);
  
  let dissimilar_elements: [number, number, number, number] = Array(4).fill(0) as [number, number, number, number];
  for (let element of tup1_set.values()) {
    if (!tup2_set.has(element)) {
      dissimilar_elements[0] = element;
      break;
    }
  }
  for (let element of tup2_set.values()) {
    if (!tup1_set.has(element)) {
      dissimilar_elements[1] = element;
      break;
    }
  }
  return dissimilar_elements;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.