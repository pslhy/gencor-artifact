function sum_Of_Subarray_Prod(arr: number[]): number {
  if(arr.length <= 1){
    return 0;
  }
  let result: number;
  let product: number;
  for(let i: number = 1; i < arr.length; i++){
    result = 0;
    product = arr[i];
    for(let j: number = i+1; j < arr.length; j++){
      result = result + product;
      product = product * arr[j];
    }
    result = result + product;
  }
  return result;
}

const input_arr: number[] = [10, 20, 30, 40, 50];
const output = sum_Of_Subarray_Prod(input_arr);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find sum of products of all possible subarrays of a given array. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-subarrays/