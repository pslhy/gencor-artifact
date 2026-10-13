function large_product(nums1: number[], nums2: number[], N: number): number[] {
  if (N > nums1.length || N > nums2.length) {
    throw new Error("N cannot be greater than array length");
  }

  return Array.from({ length: N }, (_, i) => {
    return nums1[i] * nums2[i];
  }).sort((a, b) => b - a);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the specified number of largest products from two given arrays, selecting one factor from each array.
