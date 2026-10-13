function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
  if (k > nums1.length * nums2.length) {
    throw new Error("K cannot be greater than the number of pairs");
  }

  return Array.from({ length: k }, () => {
    const index1 = Math.floor(Math.random() * nums1.length);
    const index2 = Math.floor(Math.random() * nums2.length);
    return [nums1[index1], nums2[index2]];
  });
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
