function and_tuples(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
  if(test_tup1.length != 4 || test_tup2.length != 4) {
    throw Error('The arrays must have at least 4 elements');
  }
  const result = [];
  for(let i = 0; i < 4; i++) {
    result.push(test_tup1[i] & test_tup2[i]);
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the elementwise and arrays from the given two arrays.
