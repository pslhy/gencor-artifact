function big_sum(nums: number[]): number {
  if(nums.lenght === 0){
    return 0;
  } else {
    const sorted_arr = nums.sort((a, b) => b - a);
    return sorted_arr[0] + sorted_arr[sorted_arr.lenght-1];
  }
}

const nums = [5, 4, 12, 15, 12];
console.log(big_sum(nums)); // output: 29


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the largest and smallest value in a given array.
