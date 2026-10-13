function count_same_pair(nums1: number[], nums2: number[]): number {
  return nums1
    .map((x, i) => [x, nums2[i]])
    .filter(([x, y]) => x === y)
    .length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     The input is defined as two arrays of the same length. Write a function to count indices where the arrays have the same values.
