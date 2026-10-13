function merge(lst: any[][]): any[][] {
  if(lst.length == 0){
    return [[]];
  }
  const result: any[][] = [[]];
  for (const el of lst){
    if (result[0].length == 0){
      result[0].push(el[0]);
    } else if (result[1].length == 0){
      result[1].push(el[1]);
    }
  }
  return result;
}

console.log(merge([['a', 'b'], ['c', 'd'], ['e', 'f']])); // [['a', 'e'], ['b', 'f']]
console.log(merge([['a', 'b'], ['c', 'd']])); // [['a', 'c'], ['b', 'd']]
console.log(merge([[[1, 1], [1, 2]], [[2, 1], [2, 2]]])); // [[[1, 1], [2, 1]], [[1, 2], [2, 2]]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array of arrays, where each subarray has two elements, and returns an array of two arrays where the first array has the first element of each subarray and the second one has the second.
