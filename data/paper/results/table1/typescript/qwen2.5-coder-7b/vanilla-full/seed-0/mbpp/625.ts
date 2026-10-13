function swap_List(newList: number[]): number[] { 
  let size = newList.length; 
  if(size >= 1) { 
    let temp = newList[0]; 
    newList[0] = newList[size - 1]; 
    newList[size - 1] = temp; 
  } 
  return newList; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to interchange the first and last element in a given array.
