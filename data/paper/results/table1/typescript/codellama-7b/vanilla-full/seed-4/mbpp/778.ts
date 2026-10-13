function pack_consecutive_duplicates(list1: any[]): any[][] {
  const result: any[][] = [];
  let subarray: any[] = [];
  let last_value = undefined;

  for (const value of list1) {
    if (last_value === value) {
      subarray.push(value);
    } else {
      if (subarray.length > 0) {
        result.push(subarray);
      }
      subarray = [value];
    }
    last_value = value;
  }

  if (subarray.length > 0) {
    result.push(subarray);
  }

  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to pack consecutive duplicates of a given array elements into subarrays.
