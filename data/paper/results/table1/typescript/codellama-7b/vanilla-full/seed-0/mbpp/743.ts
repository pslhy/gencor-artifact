function rotate_right(list: number[], m: number): number[] {
  const n = list.length;
  for (let i = 0; i < m; i++) {
    const temp = list[n - 1];
    for (let j = n - 1; j > 0; j--) {
      list[j] = list[j - 1];
    }
    list[0] = temp;
  }
  return list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to rotate a given array by specified number of items to the right direction. https://www.geeksforgeeks.org/tsthon-program-right-rotate-array-n/
