
function frequency_lists(list1: number[][]): {[key: number]: number} {
  const list1: number[][] = [ [ 1, 1, 2, 3, 4, 4, 4, 5, 5, 5, 5, 6 ], [ 7, 8, 9, 10, 11, 11, 11 ], [ 12, 13, 14, 15 ], [ 16, 17, 18, 19 ], [ 20, 21, 22 ], [ 23, 24, 25 ] ];
  const frequency_list: {[key: number]:number} 
  for (let i = 0; i < list1.length; i++) {
      for (let j = 0; j < list1[i].length; j++) {
          if (frequency_list[j] === undefined) {
              frequency_list[j] = 1;
          } else {
              frequency_list[j]++;
          }
      }
  }
  return frequency_list;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find frequency of each element in a flattened array of arrays, returned in an object.
