function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any {
  if(test_tuple.flat(2).find(v => v % 2 !== 0) {
    throw new Error("Invalid Input");
  }
  return test_tuple.map(v => v[0] ** v[1] ** v[2][2])
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
