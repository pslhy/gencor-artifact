function common(l1: number[], l2: number[]): number[] {
  return [...new Set([...l1, ...l2])].sort((a, b) => a - b);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return sorted unique common elements for two arrays.
//     >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
//     [1, 5, 653]
//     >>> common([5, 3, 2, 8], [3, 2])
//     [2, 3]
