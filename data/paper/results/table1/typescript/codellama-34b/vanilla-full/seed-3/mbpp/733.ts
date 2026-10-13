function find_first_occurrence(A: number[], x: number): number {
  if(A.length == 0 || x == null){
    return -1;
  }
  var i;
  for(i = 0; i < A.length; i++){
    if (A[i] == x){
      return i;
    }
  }
  return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the index of the first occurrence of a given number in a sorted array.
