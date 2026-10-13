function count_bidirectional(test_list: [number, number][]): number {
  let count: number = 0;
  for (let i = 0; i < test_list.length; i++) {
    for (let j = i; j < test_list.length; j++) {
      if (test_list[i].length === test_list[j].length) {
        count++;
      }
    }
  }
  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count bidirectional array pairs.
