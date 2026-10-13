function replace_list(list1: any[], list2: any[]): any[] {
  const last_element = list1[list1.length - 1];
  list1[list1.length - 1] = list2.shift();
  return [...list1, ...list2, last_element];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in two arrays and replaces the last element of the first array with the elements of the second array.
