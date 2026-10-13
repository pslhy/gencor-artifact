function get_Inv_Count(arr: number[]): number {
  if(arr.length <= 1)
    return 0;
  let left_arr: number[] = new Array(arr.length/2);
  let right_arr: number[] = new Array(arr.length/2);
  let mid = arr.length/2;
  let inv_count = 0;

  for(let i=0; i<arr.length/2; i++) {
    left_arr[i] = arr[i];
    right_arr[i] = arr[i+mid];
  }

  inv_count += get_Inv_Count(left_arr);

  for(let i=0; i<left_arr.length; i++) {
    for(let j=0; j<right_arr.length; j++) {
      if(left_arr[i] > right_arr[j]) {
        inv_count++;
      }
    }
  }

  inv_count += get_Inv_Count(right_arr);

  return inv_count;
};


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count inversions in an array.
