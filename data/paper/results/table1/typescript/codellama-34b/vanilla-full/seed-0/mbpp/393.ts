function max_length_list(input_list: number[][]): [number, number[]] {
  const result = input_list.reduce((max, current) => {
    if (current.length > max[1].length) {
      return [current.length, current];
    } else {
      return max;
    }
  }, [0, []]);

  return result;
}

const input_list = [[1, 2, 3], [4, 5], [6, 7, 8, 9]];
const result = max_length_list(input_list);
console.log(result); // Output: [3, [6, 7, 8, 9]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array with maximum length.
