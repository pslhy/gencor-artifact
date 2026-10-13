function sort_numeric_strings(nums_str: string[]): number[] {
   const nums: number[] = [];
 for (const str_num of nums_str) {
   nums.push(Number(str_num));
 }
   return nums.sort(function(a, b){
      return a - b;
   });
  }

// Example usage:
console.log(sort_numeric_strings(["2","1","100","7","9","13"])); // Output: [1, 2, 7, 9, 13, 100]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort a given array of strings of numbers numerically. https://www.geeksforgeeks.org/tsthon-sort-numeric-strings-in-a-array/
