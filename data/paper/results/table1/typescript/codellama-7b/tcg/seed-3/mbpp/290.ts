function max_length(list1: number[][]): [number, number[]] {
  if(list1.length === 0) {
    return [-1, []];
  }
  let max = 0;
  let idx: number = 0;
  for(let i: number = 0; i < list1.length; i++) {
    if(list1[i].length > max) {
      max = list1[i].length;
      idx = i;
    }
  }
  return [idx, list1[idx]];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array of maximum length in an array of arrays.