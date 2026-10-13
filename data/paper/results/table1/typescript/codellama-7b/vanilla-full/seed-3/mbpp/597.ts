function find_kth(arr1: number[], arr2: number[], k: number): number {
  if(k > arr1.length + arr2.length) {
    throw new Error("Invalid k value");
  }

  let i = 0;
  let j = 0;
  while(k > 0) {
    if(i === arr1.length) {
      return arr2[j++];
    } else if(j === arr2.length) {
      return arr1[i++];
    } else if(arr1[i] <= arr2[j]) {
      return arr1[i++];
    } else {
      return arr2[j++];
    }
  }
  return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
