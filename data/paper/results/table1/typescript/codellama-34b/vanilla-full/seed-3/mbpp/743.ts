function rotate_right(list: number[], m: number): number[] {
  if(m >= 0 && m < list.length){
    for (let i = 0; i < m; i++) {
      list.unshift(list.pop());
    }
  }
  return list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to rotate a given array by specified number of items to the right direction. https://www.geeksforgeeks.org/tsthon-program-right-rotate-array-n/
