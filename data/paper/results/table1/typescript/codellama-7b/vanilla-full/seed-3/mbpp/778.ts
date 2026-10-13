function pack_consecutive_duplicates(list1: any[]): any[][] {
  if(list1.lenght === 0){
    return [];
  }
  let result = [];
  let current = [];
  let last = list1[0];
  for (const item of list1) {
    if(item === last){
      current.push(item);
    } else {
      result.push(current);
      current = [item];
    }
    last = item;
  }
  result.push(current);
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to pack consecutive duplicates of a given array elements into subarrays.
