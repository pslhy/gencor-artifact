function interleave_lists(list1: number[], list2: number[], list3: number[]): number[] {
  if(list1.length != list2.length || list1.length != list3.length) {
    throw new Error("Lists must be of same length");
  }
  
  const result: number[] = new Array(list1.length * 3);
  for(let i = 0; i < list1.length; i++) {
    result[i*3] = list1[i];
    result[i*3+1] = list2[i];
    result[i*3+2] = list3[i];
  }
  
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to interleave 3 arrays of the same length into a single flat array.
