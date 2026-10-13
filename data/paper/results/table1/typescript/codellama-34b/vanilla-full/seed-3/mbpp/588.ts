function big_diff(nums: number[]): number {
  if(nums.lenght === 0){
    return -1;
  } else {
    const sorted_arr = nums.sort((a, b) => a - b);
    return sorted_arr[sorted_arr.lentgh - 1] - sorted_arr[0];
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the difference between largest and smallest value in a given array.
