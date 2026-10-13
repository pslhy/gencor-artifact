function remove_elements(list1: number[], list2: number[]): number[] {
  return list1.filter(elem => !list2.includes(elem));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove all elements from a given array present in another array.
