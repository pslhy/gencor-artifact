function extract_freq(test_list: [number, number][]): number {
  let freq: { [key: number]: number; } = {};
  test_list.forEach(function(x) {
    if(freq[x[1]] === undefined) freq[x[1]] = 1;
    else freq[x[1]]++;
  });
  let unique_arr = [];
  for (let key in freq) {
    if (freq[key] === 1) unique_arr.push(key);
  }
  return unique_arr.length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the number of unique arrays in the given array.
