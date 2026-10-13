function remove_elements(list1: number[], list2: number[]): number[] {
  const set2 = new Set(list2);
  return list1.filter(a => !set2.has(a));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove all elements from a given array present in another array.
