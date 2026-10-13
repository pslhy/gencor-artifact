function intersection_array(array_nums1: number[], array_nums2: number[]): number[] { 
  return array_nums1.filter(num => array_nums2.includes(num));
}

const array_nums1 = [1, 2, 2, 1];
const array_nums2 = [2, 2];
const result = intersection_array(array_nums1, array_nums2);
console.log(`Intersection of array1 and array2: ${result.join(', ')}`);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the intersection of two arrays.
