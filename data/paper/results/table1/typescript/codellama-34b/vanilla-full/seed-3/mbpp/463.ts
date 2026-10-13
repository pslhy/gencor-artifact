function max_subarray_product(arr: number[]): number {
  if(arr.length == 0){
    return 0;
  }
  let result = arr[0];
  let temp = arr[0];
  for(let i = 1; i < arr.length; i++){
    if(arr[i] >= 0){
      temp = Math.max(arr[i], temp + arr[i]);
    } else {
      temp = Math.min(arr[i], temp + arr[i]);
    }
    result = Math.max(result, temp);
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product subarray of the given array.
