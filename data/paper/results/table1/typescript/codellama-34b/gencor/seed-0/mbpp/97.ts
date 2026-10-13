
function frequency_lists(list1: number[][]): {[key: number]: number} {
  const result = {} as {[key: number]: number};
  for (const sublist of list1) {
    for (const element of sublist) {
      if (result[element] === undefined) {
        result[element] = 1;
      } else {
        result[element]++;
      }
    }
  }
  return result;
}

// Example usage:
const list1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
const frequency = frequency_lists(list1);
console.log(frequency); // Output: { '1': 1, '2': 1, '3': 1, '4': 1, '5': 1, '6': 1, '7': 1, '8': 1, '9': 1 }

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find frequency of each element in a flattened array of arrays, returned in an object.
