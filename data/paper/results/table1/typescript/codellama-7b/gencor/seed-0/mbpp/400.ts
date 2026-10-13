
function extract_freq(test_list: [number, number][]): number {
  const unique_arr_cnt: { [arr_idx: number]: number } 

  for (const [n1, n2] of test_list) {
    const arr_idx = `${n1} ${n2}`;
    if (!(arr_idx 
    && unique_arr_cnt[

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the number of unique arrays in the given array.
