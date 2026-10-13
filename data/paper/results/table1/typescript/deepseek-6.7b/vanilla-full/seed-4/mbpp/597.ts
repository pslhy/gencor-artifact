function find_kth(arr1: number[], arr2: number[], k: number): number {
  let i = j = 0;
  while(true) {
    if (i + j == k) {
      if (i >= arr1.length || j >= arr2.length) 
        throw "k is out of range";
      return arr1[i] < arr2[j] ? arr1[i++] : arr2[j++];
    }
    if (i >= arr1.length) 
      return arr2[k - arr1.length - 1];
    if (j >= arr2.length) 
      return arr1[k - arr2.length - 1];

    if (arr1[i] < arr2[j]) 
      i++;
    else
      j++;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
