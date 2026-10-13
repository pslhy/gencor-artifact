function large_product(nums1: number[], nums2: number[], N: number): number[] {
  if(N > nums1.length || N > nums2.length) {
    return []; // Return an empty array if N is greater than the length of either array
  }
  nums1.sort((a, b) => b - a);
  nums2.sort((a, b) => b - a);
  return nums1.slice(0, N).map((x, i) => x * nums2[nums2.length - i - 1]);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the specified number of largest products from two given arrays, selecting one factor from each array.
