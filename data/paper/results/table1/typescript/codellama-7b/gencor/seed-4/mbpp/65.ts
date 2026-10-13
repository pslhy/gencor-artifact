
function recursive_list_sum(data_list: (number | number[])[]): number {
  if (data_list.length === 0) {
    return 0;
  }
  if (Array.isArray(data_list[0])) {
    return recursive_list_sum(data_list[0].concat(data_list.slice(1, data_list.length + 1) as any));
  }
  return data_list[0] + recursive_list_sum(data_list.slice(1, data_list.length + 1) as any);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.
