
function and_tuples(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
  const tup1_array = Array.from(test_tup1);
  const tup2_array = Array.from(test_tup2);
  return tup1_array.map((elem, i) => elem && tup2_array[i] ? elem & tup2_array[i] : elem).filter(Boolean)
  .concat(tup1_array.map((elem, i) => elem && tup2_array[i] ? elem | tup2_array[i] : elem).filter(Boolean)
  .concat(tup1_array.filter(el => !tup2_array.some(el2 => el2 === el)))
  .concat(tup2_array.filter(el => !tup1_array.some(el2 => el2 === el)))

  ) as [number, number, number, number];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the elementwise and arrays from the given two arrays.
