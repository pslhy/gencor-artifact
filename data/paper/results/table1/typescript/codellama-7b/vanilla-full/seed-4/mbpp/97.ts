function frequency_lists(list1: number[][]): {[key: number]: number} {
  const counts: {[key: number]: number} = {};
  for (let i = 0; i < list1.length; i++) {
    for (let j = 0; j < list1[i].length; j++) {
      if (counts[list1[i][j]] === undefined) {
        counts[list1[i][j]] = 1;
      } else {
        counts[list1[i][j]]++;
      }
    }
  }
  return counts;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find frequency of each element in a flattened array of arrays, returned in an object.
