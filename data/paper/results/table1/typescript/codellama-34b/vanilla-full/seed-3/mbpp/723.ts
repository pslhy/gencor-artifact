function count_same_pair(nums1: number[], nums2: number[]): number {
  if(nums1.length !== nums2.length){
    return 0;
  }
  let result: number = 0;
  for(let index =0; index < nums1.length; index++){
      if(nums1[index] === nums2[index]){
        result += 1;
      }
  }
  return result;
}
 
 let nums1 : number[] = [1,2,3,4]
 let nums2 : number[] = [2,3,1,4]
 
 count_same_pair(nums1, nums2) // return 2


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     The input is defined as two arrays of the same length. Write a function to count indices where the arrays have the same values.
