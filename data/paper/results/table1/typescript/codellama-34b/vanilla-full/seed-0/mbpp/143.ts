function find_lists(Input: any[]): number {
  const visited = new Set<number[]>();
  let count = 0;
  
  for (const input of Input) {
    if (input instanceof Array) {
      if (!visited.has(input)) {
        count += 1;
        visited.add(input);
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
//     Write a function to find number of arrays present in the given array.
