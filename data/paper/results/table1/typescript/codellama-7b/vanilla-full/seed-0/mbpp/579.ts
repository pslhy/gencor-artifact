function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
  const tup1_set: Set<number> = new Set(test_tup1);
  const tup2_set: Set<number> = new Set(test_tup2);
  const dissimilar_set: Set<number> = new Set();

  for (let i: number = 0; i < test_tup1.length; i++) {
    if (!tup1_set.has(test_tup2[i])) {
      dissimilar_set.add(test_tup1[i]);
    }
  }

  for (let i: number = 0; i < test_tup2.length; i++) {
    if (!tup2_set.has(test_tup1[i])) {
      dissimilar_set.add(test_tup2[i]);
    }
  }

  return Array.from(dissimilar_set.values());
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.
