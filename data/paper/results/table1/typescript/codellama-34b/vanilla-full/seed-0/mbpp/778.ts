function pack_consecutive_duplicates(list1: any[]): any[][] {
  const result: any[][] = [];
  list1.forEach((element, i) => {
      if (i === 0) {
          result.push([element]);
      } else if (list1[i - 1] !== element) {
          result.push([element]);
      } else if (list1[i - 1] === element) {
          result[result.length - 1].push(element);
      }
  });
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to pack consecutive duplicates of a given array elements into subarrays.
