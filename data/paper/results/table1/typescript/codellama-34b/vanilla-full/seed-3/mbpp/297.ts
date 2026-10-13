function flatten_list(list1: (number | number[])[]): number[] {
  let flattened: number[] = [];
  list1.forEach((item) => {
    if (Array.isArray(item)) {
      flattened.push(...flatten_list(item));
    } else {
      flattened.push(item);
    }
  });
  return flattened;
}

console.log(flatten_list([1, 2, 3, [4, 5], [6, [7, 8]]])); // [1, 2, 3, 4, 5, 6, 7, 8]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten a given nested array structure.
