function sort_sublists(input_list: string[][]): string[][] {
  const sorted_sublists: string[][] = [];

  for (let i = 0; i < input_list.length; i++) {
    sorted_sublists.push(input_list[i].sort());
  }

  return sorted_sublists;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort each subarray of strings in a given array of arrays.
