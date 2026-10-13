
function and_tuples(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
  const tuple1: [number, number, number, number] = [...test_tup1];
  const tuple2: [number, number, number, number] = [...test_tup2];
  
  return tuple1.map((element: number, index: number) => element * tuple2[index]) as [number, number, number, number];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the elementwise and arrays from the given two arrays.
