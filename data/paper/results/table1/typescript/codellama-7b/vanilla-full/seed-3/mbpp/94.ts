function index_minimum(test_list: [string, number][]): string {
  let index = 0;
  test_list.forEach((pair, i) => {
    if (pair[1] < test_list[index][1]) { index = i }
  });
  return test_list[index][0];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of arrays, write a function that returns the first value of the array with the smallest second value.
