function split_two_parts(list1: any[], L: number): any {
  const left = list1.slice(0, L);
  const right = list1.slice(L);
  return [left, right];
}

console.log(split_two_parts([1, 2, 3, 4, 5, 6], 3)); // [[1, 2, 3], [4, 5, 6]]
console.log(split_two_parts(['a', 'b', 'c', 'd', 'e', 'f'], 2)); // [['a', 'b'], ['c', 'd', 'e', 'f']]
console.log(split_two_parts([], 2)); // [[], []]
console.log(split_two_parts([1], 1)); // [[1], []]
console.log(split_two_parts([1, 2, 3], 0)); // [[], [1, 2, 3]]
console.log(split_two_parts([1, 2, 3], 4)); // [[1, 2, 3], []]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and an integer L and splits the given array into two parts where the length of the first part of the array is L, and returns the resulting arrays in an array.
