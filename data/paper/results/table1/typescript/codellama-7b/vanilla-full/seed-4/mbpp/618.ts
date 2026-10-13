function div_list(nums1: number[], nums2: number[]): number[] {
  if (nums1.length !== nums2.length) {
    throw new Error("Cannot divide arrays of different lengths");
  }
  return nums1.map((num, idx) => Number((num / nums2[idx]).toFixed(2)));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to divide two arrays element wise.
