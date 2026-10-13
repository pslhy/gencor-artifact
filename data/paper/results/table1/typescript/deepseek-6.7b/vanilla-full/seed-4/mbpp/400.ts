function extract_freq(test_list: [number, number][]): number {
  const map: { [str: string]: number } = {};
  let count = 0;

  for (const subArr of test_list) {
    const str = subArr.sort().toString(); // sorting and converting the sub-array to string for comparison
    if (!map[str]) {
      map[str] = 1;
      count++;
    } else {
      map[str]++;
    }
  }

  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the number of unique arrays in the given array.
