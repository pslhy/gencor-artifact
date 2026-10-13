function trim_tuple(test_list: number[][], K: number): number[][] {
  const result = test_list.map((arr) => {
    const final = arr.slice(K, arr.length - K);
    return final;
  });
  return result;
}

const input_list = [[1, 2, 3, 4, 5], [6, 7, 8, 9, 10]];
const result = trim_tuple(input_list, 2);
console.log(result);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to trim each array by k in the given arrays.
