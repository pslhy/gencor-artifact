function overlapping(list1: number[], list2: number[]): boolean {
  if(list1.length === 0 || list2.length === 0) {
    return false;
  }
  return list1.some(val1 => list2.includes(val1));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether any value in a sequence exists in a sequence or not.