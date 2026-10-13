function find_lists(Input: any[]): number {
  let list_count = 0;
  for (const element of Input) {
    if (Array.isArray(element)) {
      list_count++;
    }
  }
  return list_count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find number of arrays present in the given array.
