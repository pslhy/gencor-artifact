function strange_sort_list(lst: number[]): number[] {
  const sorted = lst.sort((a, b) => a - b);
  const result = [];
  for (let i = 0; i < sorted.length; i += 2) {
    result.push(sorted[i]);
  }
  for (let i = 1; i < sorted.length; i += 2) {
    result.push(sorted[i]);
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given array of integers, return array in strange order.
//     Strange sorting, is when you start with the minimum value,
//     then maximum of the remaining integers, then minimum and so on.
//     Examples:
//     >>> strange_sort_list([1, 2, 3, 4])
//     [1, 4, 2, 3]
//     >>> strange_sort_list([5, 5, 5, 5])
//     [5, 5, 5, 5]
//     >>> strange_sort_list([])
//     []
