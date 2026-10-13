function max_product(arr: number[]): number {
  if(arr.length <= 1){
    return 1;
  }
  let result = 1;
  let i = 0;
  let j = 0;
  while(j < arr.length && i < arr.length){
    result *= arr[i];
    if(result > arr[j]){
      result /= arr[i-1];
      i--;
    }
    else{
      i++;
      j++;
    }
  }
  return arr[i];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
