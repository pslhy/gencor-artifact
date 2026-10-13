function bitwise_xor(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
  const xored_tup1: [number, number, number, number] = [0, 0, 0, 0];
  const xored_tup2: [number, number, number, number] = [0, 0, 0, 0];

  for (let i = 0; i < 4; i++) {
    xored_tup1[i] = test_tup1[i] ^ test_tup2[i];
    xored_tup2[i] = test_tup1[i] ^ test_tup1[i];
  }

  return [xored_tup1, xored_tup2];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform the mathematical bitwise xor operation across the given arrays.
