function extract_freq(test_list: [number, number][]): number {
  let dict = new Set<[number, number]>();

  for (let [a, b] of test_list) {
    const key = a >= b ? [b, a] : [a, b];

    if (!dict.has(key)) {
      dict.add(key);
    }
  }

  return dict.size;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the number of unique arrays in the given array.
