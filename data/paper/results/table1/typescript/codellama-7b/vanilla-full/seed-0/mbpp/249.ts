function intersection_array(array_nums1: number[], array_nums2: number[]): number[] {
  const set_nums1: Set<number> = new Set(array_nums1);
  const set_nums2: Set<number> = new Set(array_nums2);
  const intersection: number[] = [];
  for (const num of set_nums1.values()) {
    if (set_nums2.has(num)) {
      intersection.push(num);
    }
  }
  return intersection;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the intersection of two arrays.
