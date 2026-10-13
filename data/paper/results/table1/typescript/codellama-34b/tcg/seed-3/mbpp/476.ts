function big_sum(nums: number[]): number {
  if(nums.length === 0){
    return 0;
  }
  let big = nums[0];
  let small = nums[0];
  for(let i = 1; i < nums.length; i++){
    if(nums[i] > big){
      big = nums[i];
    }
    if(nums[i] < small){
      small = nums[i];
    }
  }
  return big + small;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the largest and smallest value in a given array.