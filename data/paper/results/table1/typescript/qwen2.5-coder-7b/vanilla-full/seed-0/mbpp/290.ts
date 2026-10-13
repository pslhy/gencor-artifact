function max_length(list1: number[][]): [number, number[]] { 
  let max_arr: number[] = [];
  list1.forEach((arr) => {
    if (arr.length > max_arr.length) {
      max_arr = arr;
    }
  });
  return [max_arr.length, max_arr];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array of maximum length in an array of arrays.
