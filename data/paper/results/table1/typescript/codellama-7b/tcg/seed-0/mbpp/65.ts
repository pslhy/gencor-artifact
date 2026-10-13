function recursive_list_sum(data_list: (number | number[])[]): number {
  const sum = data_list.reduce((accumulator: (number | number[]), value: (number | number[])) => {
    if (value.hasOwnProperty("length")) {
      return recursive_list_sum(value as number[]) + accumulator
    .


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.