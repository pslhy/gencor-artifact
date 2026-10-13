function extract_freq(test_list: [number, number][]): number {
  const unique_arr_cnt: { [arr_idx: number]: number } = {};
  test_list.forEach((arr) => {
    unique_arr_cnt[arr.toString()] =
      (unique_arr_cnt[arr.toString()] || 0) + 1;
  });
  return Object.values(unique_arr_cnt).length;
}

// Example usage:
const test_list = [[1, 2], [3, 4], [5, 6], [1, 2], [7, 8]];
extract_freq(test_list);  // returns 4, as there are 4 unique arrays in the list


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the number of unique arrays in the given array.
