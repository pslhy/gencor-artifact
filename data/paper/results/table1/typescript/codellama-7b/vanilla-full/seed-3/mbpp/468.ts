function max_product(arr: number[]): number {
  if(arr.length === 0)
    throw new Error('Input array must not be empty');
  if(arr.length === 1)
    return arr[0];
  
  let maxProduct = 1;
  for(let i = 0; i < arr.length; i++) {
    const num = arr[i];
    if(num === 0)
      continue;
    maxProduct *= num;
    if(maxProduct === 0)
      break;
  }
  return maxProduct;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
