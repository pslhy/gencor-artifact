function div_list(nums1: number[], nums2: number[]): number[] {
   if (nums1.length !== nums2.length) {
       throw new Error("Arrays must be of equal length");
   }

   return nums1.map((num1, i) => num1 / nums2[i]);
}

console.log(div_list([1, 2, 3], [4, 5, 6])); // Output: [0.25, 0.4, 0.5]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to divide two arrays element wise.
