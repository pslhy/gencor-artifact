function trim_tuple(test_list: number[][], K: number): number[][] {
  const trimmedList: number[][] = [];

  for (let i = 0; i < testList.length; i++) {
    const list = testList[i];
    const trimmedList = list.slice(K);
    trimmedList.push(trimmedList);
  }

  return trimmedList;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to trim each array by k in the given arrays.
