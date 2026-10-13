
function recursive_list_sum(data_list: (number | number[])[]): number { 
  return data_list.reduce((sum: number, value: number | number[]): number => {
    if (Array.isArray(value)) {
      return sum + recursive_list_sum(value);
    }
    return sum + value;
  }, 0);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.
