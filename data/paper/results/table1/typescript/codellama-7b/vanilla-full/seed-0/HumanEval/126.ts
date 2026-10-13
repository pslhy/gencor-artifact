function is_sorted(lst: number[]): boolean {
  if (lst.length === 1) {
    return true;
  }
  if (lst.length === 2) {
    return lst[0] <= lst[1];
  }
  for (let i = 0; i < lst.length - 1; i++) {
    if (lst[i] > lst[i + 1]) {
      return false;
    }
  }
  return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of numbers, return whether or not they are sorted
//     in ascending order. If array has more than 1 duplicate of the same
//     number, return false. Assume no negative numbers and only integers.
//     Examples
//     >>> is_sorted([5])
//     true
//     >>> is_sorted([1, 2, 3, 4, 5])
//     true
//     >>> is_sorted([1, 3, 2, 4, 5])
//     false
//     >>> is_sorted([1, 2, 3, 4, 5, 6])
//     true
//     >>> is_sorted([1, 2, 3, 4, 5, 6, 7])
//     true
//     >>> is_sorted([1, 3, 2, 4, 5, 6, 7])
//     false
//     >>> is_sorted([1, 2, 2, 3, 3, 4])
//     true
//     >>> is_sorted([1, 2, 2, 2, 3, 4])
//     false
