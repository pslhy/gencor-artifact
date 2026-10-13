function overlapping(list1: number[], list2: number[]): boolean {
  return list1.some(element => list2.includes(element));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether any value in a sequence exists in a sequence or not.
