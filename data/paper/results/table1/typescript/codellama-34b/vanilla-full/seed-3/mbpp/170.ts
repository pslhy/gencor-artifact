function sum_range_list(list1: number[], m: number, n: number): number {
  if(m < 0 || n < 0 || m > list1.length - 1 || n > list1.length - 1){
      return -1;
  }
  let sum = 0;
  for(let i = m; i < n; i++){
      sum += list1[i];
  }
  return sum;
}

// Example usage:
console.log(sum_range_list([1, 2, 3, 4, 5], 1, 3)); // Output: 9


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of numbers in an array within a range specified by two indices.
