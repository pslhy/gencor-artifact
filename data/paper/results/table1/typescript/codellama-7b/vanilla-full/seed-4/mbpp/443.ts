function largest_neg(list1: number[]): number {
  if (list1.length === 0) {
    return 0;
  }
  let max = list1[0];
  for (let i = 1; i < list1.length; i++) {
    if (list1[i] > max) {
      max = list1[i];
    }
  }
  return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest negative number from the given array.
