function max_subarray_product(arr: number[]): number {
  let maxProduct = 1;

  for (let i = 0; i < arr.length; i++) {
    const num = arr[i];
    if (num > 0) {
      maxProduct *= num;
    } else {
      maxProduct = 1;
    }
  }

  return maxProduct;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product subarray of the given array.
