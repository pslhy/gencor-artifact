function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
  let d1: number;
  let d2: number;
  let d3: number;
  let d4: number;

  if (test_tup1.length !== test_tup2.length) {
    return [d1, d2, d3, d4];
  }

  for (let i = 0; i < test_tup1.length; i++) {
    if (test_tup1[i] !== test_tup2[i]) {
      d1 = test_tup1[i];
      d2 = test_tup2[i];
      break;
    }
  }

  for (let j = 0; j < test_tup1.length; j++) {
    if (test_tup1[j] !== test_tup2[j]) {
      d3 = test_tup1[j];
      d4 = test_tup2[j];
      break;
    }
  }

  return [d1, d2, d3, d4];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.
