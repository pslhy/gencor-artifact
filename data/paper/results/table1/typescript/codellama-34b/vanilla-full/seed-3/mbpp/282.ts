function sub_list(nums1: number[], nums2: number[]): number[] {
  if(nums1.length !== nums2.length){
    return [];
  } else {
    const result: number[] = [];
    for(let i = 0; i < nums1.length; i++){
      result.push(nums2[i] - nums1[i]);
    }
    return result;
  }
}
// Example usage:
const nums1: number[] = [3,4,5];
const nums2: number[] = [1,2,3];
const subtractedArray: number[] = sub_list(nums1, nums2); // [2,2,2]
console.log(subtractedArray);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to subtract two arrays element-wise.
