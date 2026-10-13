function merge(lst: any[][]): any[][] {
  const result = [[], []];
  for (const subarray of lst) {
    result[0].push(subarray[0]);
    result[1].push(subarray[1]);
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array of arrays, where each subarray has two elements, and returns an array of two arrays where the first array has the first element of each subarray and the second one has the second.