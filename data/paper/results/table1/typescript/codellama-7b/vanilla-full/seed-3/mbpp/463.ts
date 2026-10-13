function max_subarray_product(arr: number[]): number {
  if(arr.length === 0)
    throw new Error('Input array is empty');

  let maxProduct = arr[0];
  let minProduct = arr[0];
  let currProduct = arr[0];

  for(let i = 1; i < arr.length; i++) {
    if(currProduct === 0)
      currProduct = arr[i];
    else
      currProduct *= arr[i];

    if(currProduct > maxProduct)
      maxProduct = currProduct;
    if(currProduct < minProduct)
      minProduct = currProduct;
  }

  return maxProduct;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product subarray of the given array.
