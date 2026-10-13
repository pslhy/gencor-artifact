function large_product(nums1: number[], nums2: number[], N: number): number[] {
    const nums1Sorted = nums1.sort((a, b) => b - a);
    const nums2Sorted = nums2.sort((a, b) => b - a);
    const heap = new Array(N).fill(0); // Array to store top 'N' products.
    for (let i = 0; i < N; ++i) { // Filling up base firstly with smallest product that is from nums1 & nums2 min.
        heap[i] = [nums1Sorted[i] * nums2Sorted[0], nums1Sorted[i], nums2Sorted[0] || 0, 0, 0]
    .sort((a, b) => a - b) as any as number[
        ]
   
    [
   
   
   
   
   
   
   
   
   
  
    ]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the specified number of largest products from two given arrays, selecting one factor from each array.