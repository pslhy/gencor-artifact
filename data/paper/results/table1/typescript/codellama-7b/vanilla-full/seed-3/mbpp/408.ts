function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
  if(k > nums1.length * nums2.length) {
    throw new Error("K is greater than the total number of pairs");
  }

  // Sort the arrays in ascending order
  nums1.sort((a, b) => a - b);
  nums2.sort((a, b) => a - b);

  // Initialize the result array with the smallest pair of numbers
  // from the two arrays
  const result: number[][] = [[nums1[0], nums2[0]]];

  // Loop through the arrays and find the next smallest pair
  for(let i = 1; i < nums1.length; i++) {
    for(let j = 0; j < nums2.length; j++) {
      if(result[result.length - 1][1] < nums2[j]) {
        result.push([nums1[i], nums2[j]]);
        if(result.length === k) {
          return result;
        }
      }
    }
  }

  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
