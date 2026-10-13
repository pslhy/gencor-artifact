function count_samepair(list1: number[], list2: number[], list3: number[]): number { 
  return list1.filter((value, index) => value === list2[index] && value === list3[index]).length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count number items that are identical in the same position of three given arrays.
