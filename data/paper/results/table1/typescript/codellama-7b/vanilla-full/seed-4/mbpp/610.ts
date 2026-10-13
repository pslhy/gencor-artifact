function remove_kth_element(list1: number[], L: number): number[] {
  if (L >= list1.length) {
    throw new Error("Index out of bounds");
  }
  return list1.slice(0, L).concat(list1.slice(L + 1, list1.length));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array and returns an array with the same elements, but the k'th element removed.
