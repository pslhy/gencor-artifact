function is_Sub_Array(A: number[], B: number[]): boolean {
  if(A.length > B.length){
    return false;
  }
  for(let i = 0; i < B.length; i++){
    for(let j = 0; j < A.length; j++){
      if(A[j] !== B[i + j]){
        return false;
      }
    }
  }
  return true;
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether an array is subarray of another or not.
