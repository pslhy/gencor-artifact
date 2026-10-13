function count_bidirectional(test_list: [number, number][]): number { 
  let size = test_list.length; 
  let res = 0; 
  for (let i = 0; i < size - 1; i++) {
    for (let j = i + 1; j < size; j++) {
      if ((test_list[i][0] == test_list[j][1] && test_list[i][1] == test_list[j][0])) {
        res += 1; 
      }
    }
  }
  return res; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count bidirectional array pairs.
