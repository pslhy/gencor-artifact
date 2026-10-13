function extract_index_list(l1: number[], l2: number[], l3: number[]): any[] {
  const common_indexes = new Set([0, 1, 2])
  for (const i of l1) {
    if (l2.includes(i) && l3.includes(i)) {
      common_indexes.add(i)
    }
  }
  return Array.from(common_indexes)
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     We say that an element is common for arrays l1, l2, l3 if it appears in all three arrays under the same index. Write a function to find common elements from three arrays. The function should return an array.
