function large_product(nums1: number[], nums2: number[], N: number): number[] {
  if(N < 0 || N > Math.min(nums1.length, nums2.length)) {
    throw new Error("Invalid N parameter.");
  }

  let heap: number[][];

  for(let i = 0; i < nums1.length; i++) {
    for(let j = 0; j < nums2.length; j++) {
      const product = nums1[i] * nums2[j];
      if(heap.length >= N) {
        if(product > heap[0][0]) {
          heap.pop();
          heap.push([product, i, j]);
        }
      } else {
        heap.push([product, i, j]);
      }
    }
  }

  return heap.sort((a, b) => a[0] - b[0]).slice(0, N);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the specified number of largest products from two given arrays, selecting one factor from each array.
