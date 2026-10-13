function sort_sublists(list1: string[][]): string[][] {
  const sorted_sublists: string[][] = list1.map(sublist => sublist.sort());
  return sorted_sublists;
}

// Example usage:
const list1 = [["c", "a", "d"], ["a", "b", "c"], ["d", "a", "z"]];
const sorted_sublists = sort_sublists(list1);
// Returns [["a", "c", "d"], ["a", "b", "c"], ["a", "d", "z"]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort each subarray of strings in a given array of arrays.
