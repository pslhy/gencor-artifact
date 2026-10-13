
function frequency_lists(list1: number[][]): {[key: number]: number} {
  const result = Object.create(null);
  for (let i = 0; i < list1.length; i++) {
    result[list1[i][0]] = (result[list1[i][0]] || 0) + 1;
  }
  return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find frequency of each element in a flattened array of arrays, returned in an object.
