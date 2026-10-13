function division_elements(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
  const test_result: [number, number, number, number] = [0, 0, 0, 0];

  test_tup1.forEach((element1: number, index: Number) => {
    test_tup2.forEach((element2: number) => {
      if (element2 != 0) {
        test_result[index] = element1 / element2;
        return;
      }
    });
  });

  return test_result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in two arrays and performs mathematical division operation element-wise across the given arrays.
