function swap_List(newList: number[]): number[] {
  const last = newList.length - 1;
  const swap = newList[0];
  newList[0] = newList[last];
  newList[last] = swap;
  return newList;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to interchange the first and last element in a given array.
