function find_combinations(test_list: [number, number][]): [number, number][] {
  const combinations: [number, number][] = [];
  const n = test_list.length;

  for (let i = 0; i < n; i++) {
    for (let j = i + 1; j < n; j++) {
      combinations.push([test_list[i][0] + test_list[j][0], test_list[i][1] + test_list[j][1]]);
    }
  }

  return combinations;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the combinations of sums with arrays in the given array array. https://www.geeksforgeeks.org/tsthon-combinations-of-sum-with-arrays-in-array-array/
