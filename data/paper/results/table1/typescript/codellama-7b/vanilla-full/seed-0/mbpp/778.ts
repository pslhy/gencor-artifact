function pack_consecutive_duplicates(list1: any[]): any[][] {
  const result: any[][] = [];
  let current = [];
  let last = null;

  for (const elem of list1) {
    if (elem !== last) {
      current.push(elem);
      last = elem;
    }

    if (current.length > 1 || result.length === 0) {
      result.push(current);
      current = [];
    }
  }

  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to pack consecutive duplicates of a given array elements into subarrays.
