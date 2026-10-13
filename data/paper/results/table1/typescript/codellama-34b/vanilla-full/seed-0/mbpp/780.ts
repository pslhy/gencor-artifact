function find_combinations(test_list: [number, number][]): [number, number][] {
  const results = [];
  for (let i = 0; i < test_list.length; i++) {
    for (let j = i + 1; j < test_list.length; j++) {
      results.push([test_list[i], test_list[j]]);
    }
  }
  return results;
}

const test_list = [[1, 2], [3, 4], [5, 6]];
const result = find_combinations(test_list);
console.log(result); // Output: [[[1, 2], [3, 4]], [[1, 2], [5, 6]], [[3, 4], [5, 6]]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the combinations of sums with arrays in the given array array. https://www.geeksforgeeks.org/tsthon-combinations-of-sum-with-arrays-in-array-array/
