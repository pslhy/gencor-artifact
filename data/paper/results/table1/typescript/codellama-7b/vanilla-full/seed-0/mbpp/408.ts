function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
  const pairs: number[][] = [];
  for (let i = 0; i < nums1.length && k > 0; i++) {
    for (let j = 0; j < nums2.length && k > 0; j++) {
      pairs.push([nums1[i], nums2[j]]);
      k--;
    }
  }
  return pairs;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
