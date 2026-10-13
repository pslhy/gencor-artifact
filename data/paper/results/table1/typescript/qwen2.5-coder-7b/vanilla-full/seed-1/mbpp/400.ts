function extract_freq(test_list: [number, number][]): number { 
  const res = new Set(test_list.map(JSON.stringify));
  return res.size;
}

// Test
const test_list: [number, number][] = [[1, 2], [1, 2], [3, 4], [5, 6], [3, 4]];
console.log(extract_freq(test_list));  // Output: 3


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the number of unique arrays in the given array.
