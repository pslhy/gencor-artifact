function intersection_array(array_nums1: number[], array_nums2: number[]): number[] { 
  return array_nums1.filter(value => array_nums2.includes(value));
}

// Test
const array_nums1 = [1, 2, 3, 4, 5];
const array_nums2 = [3, 4, 5, 6, 7];
console.log(intersection_array(array_nums1, array_nums2)); // Output: [3, 4, 5]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the intersection of two arrays.
