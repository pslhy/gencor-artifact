function large_product(nums1: number[], nums2: number[], N: number): number[] {
   let topN: number[] = [];
   for (let i = 0; i < nums1.length; i++) {
       for (let j = 0; j < nums2.length; j++) {
           topN.push(nums1[i] * nums2[j]);
       }
   }
   topN.sort((a, b) => b - a);
   return topN.slice(0, N);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the specified number of largest products from two given arrays, selecting one factor from each array.
