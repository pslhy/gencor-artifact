function max_subarray_product(arr: number[]): number {
  const n = arr.length;
  if (n === 0) {
    return 0;
  }

  let max_product = 1;
  let min_product = 1;
  let max_so_far = arr[0];
  let min_so_far = arr[0];

  for (let i = 1; i < n; i++) {
    let curr_num = arr[i];
    let curr_product = curr_num * min_so_far;

    if (curr_product < 0) {
      min_so_far = curr_num;
      max_product = Math.max(max_product, curr_product);
    } else {
      min_product = Math.min(min_product, curr_product);
      max_so_far = Math.max(max_so_far, curr_num);
      max_product = Math.max(max_product, max_so_far * min_product);
    }
  }

  return max_product;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product subarray of the given array.
