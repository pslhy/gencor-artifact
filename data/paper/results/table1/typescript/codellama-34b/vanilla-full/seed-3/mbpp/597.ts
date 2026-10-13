function find_kth(arr1: number[], arr2: number[], k: number): number {
  if(k < 1 || k > Math.max(arr1.length, arr2.length)) {
      throw new Error('K is out of range');
  }

  let i: number = (k - 1) * 2;
  let j: number = Math.max(0, i - (arr1.length - 1));
  while(i >= 0 && j >= 0 && i < arr1.length && j < arr2.length) {
      let num1: number = arr1[i];
      let num2: number = arr2[j];
      if(num1 <= num2) {
          i--;
      } else {
          j--;
      }
  }

  return k === 1 ? arr1[i] : arr2[j];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
