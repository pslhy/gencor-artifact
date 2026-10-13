function sort_sublists(list1: string[][]): string[][] {
  for (let i = 0; i < list1.length; i++) {
    list1[i] = list1[i].sort();
  }
  return list1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort each subarray of strings in a given array of arrays.
