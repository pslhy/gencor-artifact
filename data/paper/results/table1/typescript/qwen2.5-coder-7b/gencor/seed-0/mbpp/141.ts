
function pancake_sort(nums: number[]): number[] { 
  let arr_length = nums.length; 
  
  while (arr_length > 1) { 
    let mi = 0; 
    let i = 0; 
  
    for (i = 1; i < arr_length; i++) { 
      if (nums[i] > nums[mi]) { 
        mi = i; 
      } 
    } 
  
    if (mi != arr_length - 1) { 
      nums = [...nums.slice(0, mi + 1).reverse(), ...nums.slice(mi + 1)]
      nums = [...nums.slice(0, arr_length).reverse(), ...nums.slice(arr_length)]
    } 
  
    arr_length--; 
  } 
  
  return nums; 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
