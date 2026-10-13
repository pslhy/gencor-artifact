function max_sub_array_sum(a: number[], size: number): number {
  if (size > a.length) {
    return 0;
  }

  var max_sum = a[0];
  var current_sum = a[0];

  for (var i = 1; i < size; i++) {
    current_sum = Math.max(current_sum + a[i], 0);
    max_sum = Math.max(max_sum, current_sum);
  }

  return max_sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of the largest contiguous subarray in the given array.
