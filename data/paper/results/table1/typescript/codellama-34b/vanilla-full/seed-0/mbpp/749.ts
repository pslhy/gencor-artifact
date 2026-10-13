function sort_numeric_strings(nums_str: string[]): number[] {
  const nums: number[] = new Array(nums_str.length);
  
  for (let i = 0; i < nums_str.length; i++) {
    nums[i] = parseInt(nums_str[i]);
  }
  
  nums.sort((a, b) => {
    return a - b;
  });
  
  return nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort a given array of strings of numbers numerically. https://www.geeksforgeeks.org/tsthon-sort-numeric-strings-in-a-array/
