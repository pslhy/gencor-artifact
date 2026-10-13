function multiply_elements(test_tup: number[]): any[] {
  const tup_length = test_tup.length - 1;
  const result = new Array<any>();
  for (let idx = 0; idx < tup_length; idx++) {
    const element = test_tup[idx] * test_tup[idx + 1];
    result.push(element);
  }
  return result;
}

// Example usage:
const t_arr = [1, 2, 3, 4, 5];
const result = multiply_elements(t_arr); // returns [2, 6, 12]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes as input an array of numbers (t_1,...,t_{N+1}) and returns an array of length N where the i-th element of the array is equal to t_i * t_{i+1}.
